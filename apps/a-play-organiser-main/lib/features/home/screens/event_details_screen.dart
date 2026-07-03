import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';
import 'package:go_router/go_router.dart';

import '../controllers/home_controller.dart';
import '../../auth/controllers/auth_controller.dart';
import '../../../core/theme/app_theme.dart';
import '../models/event.dart';
import '../services/booking_service.dart';

class EventDetailsScreen extends ConsumerWidget {
  final String eventId;

  const EventDetailsScreen({
    super.key,
    required this.eventId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authControllerProvider);
    
    return authState.maybeWhen(
      authenticated: (user) {
        final eventAsync = ref.watch(eventByIdProvider(eventId));
        return eventAsync.when(
          data: (event) {
            if (event == null) {
              return _buildEventNotFound(context);
            }
            final isOrganizer = user.id == (event.organizerId ?? '');
            return _buildEventDetails(context, ref, event, user.id, isOrganizer);
          },
          loading: () => _buildLoading(),
          error: (error, _) => _buildError(context, error.toString()),
        );
      },
      orElse: () => _buildError(context, 'Authentication required'),
    );
  }

  Widget _buildEventDetails(
    BuildContext context,
    WidgetRef ref,
    Event event,
    String userId,
    bool isOrganizer,
  ) {
    final isUpcoming = event.startDate.isAfter(DateTime.now());
    final isPast = event.endDate.isBefore(DateTime.now());
    final venueAsync = (event.venueId != null && event.venueId!.isNotEmpty)
        ? ref.watch(clubByIdProvider(event.venueId!))
        : const AsyncValue.data(null);
    
    return Scaffold(
      backgroundColor: AppTheme.backgroundDark,
      body: CustomScrollView(
        slivers: [
          // App Bar with Cover Image
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            elevation: 0,
            backgroundColor: AppTheme.backgroundDark,
            surfaceTintColor: Colors.transparent,
            leading: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppTheme.backgroundDark.withValues(alpha: 0.8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
            actions: [
              if (isOrganizer)
                Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppTheme.backgroundDark.withValues(alpha: 0.8),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    onPressed: () => context.push('/edit-event/${event.id}'),
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  event.coverImage != null
                      ? CachedNetworkImage(
                          imageUrl: event.coverImage!,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => Container(
                            color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                          errorWidget: (context, url, error) => Container(
                            color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                            child: const Center(
                              child: Icon(
                                Icons.event_outlined,
                                color: AppTheme.primaryOrange,
                                size: 64,
                              ),
                            ),
                          ),
                        )
                      : Container(
                          color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                          child: const Center(
                            child: Icon(
                              Icons.event_outlined,
                              color: AppTheme.primaryOrange,
                              size: 64,
                            ),
                          ),
                        ),
                  // Gradient overlay
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.7),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Content
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title and Status
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          event.title,
                          style: AppTheme.heading1.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      _buildStatusChip(isUpcoming, isPast),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Event Info Cards
                  _buildInfoCard(
                    icon: Icons.schedule_outlined,
                    title: 'Date & Time',
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Starts: ${DateFormat('EEEE, MMMM dd, yyyy • hh:mm a').format(event.startDate)}',
                          style: AppTheme.bodyMedium,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Ends: ${DateFormat('EEEE, MMMM dd, yyyy • hh:mm a').format(event.endDate)}',
                          style: AppTheme.bodyMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          _getDurationText(event.startDate, event.endDate),
                          style: AppTheme.bodySmall.copyWith(
                            color: AppTheme.primaryOrange,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  _buildInfoCard(
                    icon: Icons.location_on_outlined,
                    title: 'Location',
                    content: venueAsync.when(
                      data: (club) => Text(
                        club != null
                            ? ((club as dynamic).name ?? (event.location ?? 'Venue to be announced'))
                            : (event.location ?? 'Venue to be announced'),
                        style: AppTheme.bodyMedium,
                      ),
                      loading: () => const SizedBox(
                        height: 20,
                        child: Center(
                          child: CircularProgressIndicator(
                            color: AppTheme.primaryOrange,
                            strokeWidth: 2,
                          ),
                        ),
                      ),
                      error: (error, _) => Text(
                        event.location ?? 'Venue to be announced',
                        style: AppTheme.bodyMedium,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  _buildInfoCard(
                    icon: Icons.description_outlined,
                    title: 'Description',
                    content: Text(
                      event.description,
                      style: AppTheme.bodyMedium.copyWith(
                        height: 1.5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Action Buttons
                  if (isOrganizer) ...[
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () => context.push('/edit-event/${event.id}'),
                            icon: const Icon(Icons.edit, size: 18),
                            label: const Text('Edit Event'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme.primaryOrange,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ] else ...[
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () => _showJoinOptions(context, ref, event, userId),
                        icon: const Icon(Icons.event_available, size: 18),
                        label: const Text('Join Event'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.primaryOrange,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required Widget content,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.surfaceDark,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppTheme.primaryOrange.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  icon,
                  color: AppTheme.primaryOrange,
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: AppTheme.bodyLarge.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          content,
        ],
      ),
    );
  }

  Widget _buildStatusChip(bool isUpcoming, bool isPast) {
    late final Color color;
    late final String text;
    
    if (isPast) {
      color = AppTheme.textSecondary;
      text = 'Completed';
    } else if (isUpcoming) {
      color = AppTheme.successColor;
      text = 'Upcoming';
    } else {
      color = AppTheme.primaryOrange;
      text = 'Ongoing';
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: color.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Text(
        text,
        style: AppTheme.bodySmall.copyWith(
          color: color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  String _getDurationText(DateTime start, DateTime end) {
    final duration = end.difference(start);
    
    if (duration.inDays > 0) {
      return '${duration.inDays} day${duration.inDays > 1 ? 's' : ''} event';
    } else if (duration.inHours > 0) {
      return '${duration.inHours} hour${duration.inHours > 1 ? 's' : ''} event';
    } else {
      return '${duration.inMinutes} minute${duration.inMinutes > 1 ? 's' : ''} event';
    }
  }

  void _showJoinOptions(
    BuildContext context,
    WidgetRef ref,
    Event event,
    String userId,
  ) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppTheme.surfaceDark,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        bool isSubmitting = false;
        return StatefulBuilder(
          builder: (context, setState) {
            Future<void> submit() async {
              setState(() {
                isSubmitting = true;
              });

              final result = await ref.read(bookingServiceProvider).createBooking(
                    eventId: event.id,
                    userId: userId,
                    pricePaid: event.price,
                  );

              if (!context.mounted) return;

              result.fold(
                (failure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(failure.toString()),
                      backgroundColor: AppTheme.errorColor,
                    ),
                  );
                },
                (_) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Joined successfully.'),
                      backgroundColor: AppTheme.successColor,
                    ),
                  );
                  Navigator.pop(context);
                },
              );

              if (!context.mounted) return;
              setState(() {
                isSubmitting = false;
              });
            }

            return Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: AppTheme.textSecondary.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Join Event',
                    style: AppTheme.heading3.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Would you like to join "${event.title}"?',
                    style: AppTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: isSubmitting ? null : () => Navigator.pop(context),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: AppTheme.textSecondary,
                            side: BorderSide(
                              color: AppTheme.textSecondary.withValues(alpha: 0.3),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          child: const Text('Cancel'),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: isSubmitting ? null : submit,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.primaryOrange,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          child: isSubmitting
                              ? const SizedBox(
                                  width: 18,
                                  height: 18,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: Colors.white,
                                  ),
                                )
                              : const Text('Join'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildEventNotFound(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundDark,
      appBar: AppBar(
        title: const Text('Event Details'),
        backgroundColor: AppTheme.backgroundDark,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.event_busy,
              size: 64,
              color: AppTheme.textSecondary,
            ),
            const SizedBox(height: 16),
            Text(
              'Event not found',
              style: AppTheme.heading3,
            ),
            const SizedBox(height: 8),
            Text(
              'The event you\'re looking for doesn\'t exist or may have been deleted.',
              style: AppTheme.bodyMedium.copyWith(
                color: AppTheme.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.pop(),
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoading() {
    return Scaffold(
      backgroundColor: AppTheme.backgroundDark,
      appBar: AppBar(
        title: const Text('Event Details'),
        backgroundColor: AppTheme.backgroundDark,
        elevation: 0,
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildError(BuildContext context, String error) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundDark,
      appBar: AppBar(
        title: const Text('Event Details'),
        backgroundColor: AppTheme.backgroundDark,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: 64,
              color: AppTheme.errorColor,
            ),
            const SizedBox(height: 16),
            Text(
              'Error loading event',
              style: AppTheme.heading3,
            ),
            const SizedBox(height: 8),
            Text(
              error,
              style: AppTheme.bodyMedium.copyWith(
                color: AppTheme.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.pop(),
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
} 
