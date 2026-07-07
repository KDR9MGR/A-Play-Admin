import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

import '../controllers/home_controller.dart';
import '../../auth/controllers/auth_controller.dart';
import '../../../core/theme/app_theme.dart';
import '../models/event.dart';

class EventsListScreen extends ConsumerStatefulWidget {
  const EventsListScreen({super.key});

  @override
  ConsumerState<EventsListScreen> createState() => _EventsListScreenState();
}

class _EventsListScreenState extends ConsumerState<EventsListScreen> {
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounceTimer;
  String _searchQuery = '';
  List<Event> _filteredEvents = [];
  List<Event> _allEvents = [];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _debounceTimer?.cancel();
    super.dispose();
  }

  void _onSearchChanged() {
    if (_debounceTimer?.isActive ?? false) _debounceTimer!.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      setState(() {
        _searchQuery = _searchController.text.toLowerCase();
        _filterEvents();
      });
    });
  }

  void _filterEvents() {
    if (_searchQuery.isEmpty) {
      _filteredEvents = List.from(_allEvents);
    } else {
      _filteredEvents = _allEvents.where((event) {
        return event.title.toLowerCase().contains(_searchQuery) ||
               event.description.toLowerCase().contains(_searchQuery) ||
               (event.location?.toLowerCase().contains(_searchQuery) ?? false);
      }).toList();
    }
  }

  void _updateEvents(List<Event> events) {
    _allEvents = events;
    _filterEvents();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);
    
    return authState.maybeWhen(
      authenticated: (user) => _buildEventsListContent(context, ref, user),
      orElse: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            color: AppTheme.primaryOrange,
          ),
        ),
      ),
    );
  }

  Widget _buildEventsListContent(BuildContext context, WidgetRef ref, user) {
    final allEvents = user.isOrganizer
        ? ref.watch(eventsByUserProvider(user.id))
        : ref.watch(upcomingEventsProvider);

    return Scaffold(
      backgroundColor: AppTheme.backgroundDark,
      appBar: AppBar(
        backgroundColor: AppTheme.backgroundDark,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        title: Text(
          user.isOrganizer ? 'My Events' : 'All Events',
          style: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppTheme.textPrimary,
          ),
        ),
        centerTitle: false,
        actions: [
          if (user.isOrganizer)
            IconButton(
              onPressed: () => context.push('/my-venues'),
              icon: const Icon(
                Icons.storefront_outlined,
                color: AppTheme.textPrimary,
                size: 24,
              ),
              tooltip: 'My Venues',
            ),
          if (user.isOrganizer)
            IconButton(
              onPressed: () => context.push('/create-event'),
              icon: Icon(
                Icons.add_rounded,
                color: AppTheme.primaryOrange,
                size: 24,
              ),
              tooltip: 'Create Event',
            ),
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: EventSearchDelegate(_allEvents, user.isOrganizer),
              );
            },
            icon: Icon(
              Icons.search_rounded,
              color: AppTheme.textSecondary,
              size: 24,
            ),
            tooltip: 'Search Events',
          ),
        ],
      ),
      body: Column(
        children: [
          // Search Bar
          Container(
            margin: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            decoration: BoxDecoration(
              color: AppTheme.surfaceDark,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                width: 1,
              ),
            ),
            child: TextField(
              controller: _searchController,
              style: GoogleFonts.inter(
                color: AppTheme.textPrimary,
                fontSize: 14,
              ),
              decoration: InputDecoration(
                hintText: 'Search events...',
                hintStyle: GoogleFonts.inter(
                  color: AppTheme.textSecondary,
                  fontSize: 14,
                ),
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: AppTheme.textSecondary,
                  size: 20,
                ),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        onPressed: () {
                          _searchController.clear();
                          setState(() {
                            _searchQuery = '';
                            _filterEvents();
                          });
                        },
                        icon: Icon(
                          Icons.clear_rounded,
                          color: AppTheme.textSecondary,
                          size: 18,
                        ),
                      )
                    : null,
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
              ),
            ),
          ),
          
          // Events List
          Expanded(
            child: allEvents.when(
              loading: () => const Center(
                child: CircularProgressIndicator(
                  color: AppTheme.primaryOrange,
                ),
              ),
              error: (error, stackTrace) => _buildErrorState(ref, user),
              data: (events) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  _updateEvents(events);
                });
                
                final displayEvents = _searchQuery.isEmpty ? events : _filteredEvents;
                
                if (displayEvents.isEmpty) {
                  return _buildEmptyState(user, _searchQuery.isNotEmpty);
                }
                
                return RefreshIndicator(
                  color: AppTheme.primaryOrange,
                  backgroundColor: AppTheme.surfaceDark,
                  onRefresh: () async {
                    return ref.refresh(
                      user.isOrganizer
                          ? eventsByUserProvider(user.id)
                          : upcomingEventsProvider,
                    );
                  },
                  child: ListView.separated(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 100),
                    itemCount: displayEvents.length,
                    separatorBuilder: (context, index) => Divider(
                      color: AppTheme.surfaceDark,
                      thickness: 1,
                      height: 1,
                    ),
                    itemBuilder: (context, index) {
                      final event = displayEvents[index];
                      return _buildEventListTile(context, event, user.isOrganizer);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEventListTile(BuildContext context, Event event, bool isOrganizer) {
    final isUpcoming = event.startDate.isAfter(DateTime.now());
    
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      leading: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppTheme.primaryOrange.withValues(alpha: 0.1),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: event.coverImage != null
              ? CachedNetworkImage(
                  imageUrl: event.coverImage!,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                    child: Icon(
                      Icons.event_outlined,
                      color: AppTheme.primaryOrange,
                      size: 24,
                    ),
                  ),
                  errorWidget: (context, url, error) => Icon(
                    Icons.event_outlined,
                    color: AppTheme.primaryOrange,
                    size: 24,
                  ),
                )
              : Icon(
                  Icons.event_outlined,
                  color: AppTheme.primaryOrange,
                  size: 24,
                ),
        ),
      ),
      title: Text(
        event.title,
        style: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppTheme.textPrimary,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 4),
          Text(
            event.description,
            style: GoogleFonts.inter(
              fontSize: 13,
              color: AppTheme.textSecondary,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Icon(
                Icons.schedule_outlined,
                size: 14,
                color: isUpcoming ? AppTheme.primaryOrange : AppTheme.textSecondary,
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  DateFormat('MMM dd, yyyy • hh:mm a').format(event.startDate),
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: isUpcoming ? AppTheme.primaryOrange : AppTheme.textSecondary,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          if ((event.location ?? '').isNotEmpty) ...[
            const SizedBox(height: 2),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 14,
                  color: AppTheme.textSecondary,
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    event.location!,
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: AppTheme.textSecondary,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
      trailing: isOrganizer
          ? PopupMenuButton<String>(
              onSelected: (value) {
                if (value == 'edit') {
                  context.push('/edit-event/${event.id}');
                } else if (value == 'delete') {
                  _showDeleteConfirmation(context, ref, event.id);
                }
              },
              icon: Icon(
                Icons.more_vert_rounded,
                color: AppTheme.textSecondary,
                size: 20,
              ),
              color: AppTheme.surfaceDark,
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 'edit',
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit_outlined,
                        size: 16,
                        color: AppTheme.textSecondary,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'Edit',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          color: AppTheme.textPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'delete',
                  child: Row(
                    children: [
                      Icon(
                        Icons.delete_outline,
                        size: 16,
                        color: AppTheme.errorColor,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'Delete',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          color: AppTheme.errorColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Icon(
              Icons.chevron_right_rounded,
              color: AppTheme.textSecondary,
              size: 20,
            ),
      onTap: () => context.push('/event-details/${event.id}'),
    );
  }

  Widget _buildEmptyState(user, bool isSearchResult) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isSearchResult ? Icons.search_off : Icons.event_busy_outlined,
              size: 64,
              color: AppTheme.textSecondary,
            ),
            const SizedBox(height: 16),
            Text(
              isSearchResult
                  ? 'No events found'
                  : (user.isOrganizer ? 'No events created yet' : 'No events available'),
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppTheme.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              isSearchResult
                  ? 'Try adjusting your search terms'
                  : (user.isOrganizer 
                      ? 'Create your first event to get started'
                      : 'Check back later for upcoming events'),
              style: GoogleFonts.inter(
                fontSize: 14,
                color: AppTheme.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
            if (user.isOrganizer && !isSearchResult) ...[
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () => context.push('/create-event'),
                icon: const Icon(Icons.add_rounded, size: 18),
                label: Text(
                  'Create Event',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.primaryOrange,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildErrorState(WidgetRef ref, user) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: AppTheme.errorColor,
            ),
            const SizedBox(height: 16),
            Text(
              'Failed to load events',
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppTheme.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Something went wrong while loading events',
              style: GoogleFonts.inter(
                fontSize: 14,
                color: AppTheme.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () => ref.refresh(
                user.isOrganizer
                    ? eventsByUserProvider(user.id)
                    : upcomingEventsProvider,
              ),
              icon: const Icon(Icons.refresh_rounded, size: 18),
              label: Text(
                'Try Again',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primaryOrange,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showDeleteConfirmation(BuildContext context, WidgetRef ref, String eventId) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.surfaceDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        title: Text(
          'Delete Event',
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppTheme.textPrimary,
          ),
        ),
        content: Text(
          'Are you sure you want to delete this event? This action cannot be undone.',
          style: GoogleFonts.inter(
            fontSize: 14,
            color: AppTheme.textSecondary,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              'Cancel',
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppTheme.textSecondary,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              // Add delete functionality here
              // ref.read(homeControllerProvider.notifier).deleteEvent(eventId);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.errorColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'Delete',
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Search Delegate for Events
class EventSearchDelegate extends SearchDelegate<Event?> {
  final List<Event> events;
  final bool isOrganizer;

  EventSearchDelegate(this.events, this.isOrganizer);

  @override
  String get searchFieldLabel => 'Search events...';

  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: AppTheme.backgroundDark,
        foregroundColor: AppTheme.textPrimary,
        elevation: 0,
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: GoogleFonts.inter(
          color: AppTheme.textSecondary,
        ),
        border: InputBorder.none,
      ),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.inter(
          color: AppTheme.textPrimary,
          fontSize: 16,
        ),
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return _buildSearchResults(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return _buildSearchResults(context);
  }

  Widget _buildSearchResults(BuildContext context) {
    final filteredEvents = events.where((event) {
      return event.title.toLowerCase().contains(query.toLowerCase()) ||
             event.description.toLowerCase().contains(query.toLowerCase()) ||
             (event.location?.toLowerCase().contains(query.toLowerCase()) ?? false);
    }).toList();

    if (query.isEmpty) {
      return Container(
        color: AppTheme.backgroundDark,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.search,
                size: 64,
                color: AppTheme.textSecondary,
              ),
              const SizedBox(height: 16),
              Text(
                'Search for events',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: AppTheme.textSecondary,
                ),
              ),
            ],
          ),
        ),
      );
    }

    if (filteredEvents.isEmpty) {
      return Container(
        color: AppTheme.backgroundDark,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.search_off,
                size: 64,
                color: AppTheme.textSecondary,
              ),
              const SizedBox(height: 16),
              Text(
                'No events found',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: AppTheme.textPrimary,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Try adjusting your search terms',
                style: GoogleFonts.inter(
                  fontSize: 14,
                  color: AppTheme.textSecondary,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      color: AppTheme.backgroundDark,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemCount: filteredEvents.length,
        separatorBuilder: (context, index) => Divider(
          color: AppTheme.surfaceDark,
          thickness: 1,
          height: 1,
        ),
        itemBuilder: (context, index) {
          final event = filteredEvents[index];
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            leading: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppTheme.primaryOrange.withValues(alpha: 0.1),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: event.coverImage != null
                    ? CachedNetworkImage(
                        imageUrl: event.coverImage!,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Icon(
                          Icons.event_outlined,
                          color: AppTheme.primaryOrange,
                          size: 20,
                        ),
                        errorWidget: (context, url, error) => Icon(
                          Icons.event_outlined,
                          color: AppTheme.primaryOrange,
                          size: 20,
                        ),
                      )
                    : Icon(
                        Icons.event_outlined,
                        color: AppTheme.primaryOrange,
                        size: 20,
                      ),
              ),
            ),
            title: Text(
              event.title,
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppTheme.textPrimary,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              DateFormat('MMM dd, yyyy').format(event.startDate),
              style: GoogleFonts.inter(
                fontSize: 12,
                color: AppTheme.textSecondary,
              ),
            ),
            onTap: () {
              close(context, event);
              context.push('/event-details/${event.id}');
            },
          );
        },
      ),
    );
  }
} 
