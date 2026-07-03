import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../controllers/home_controller.dart';
import '../../auth/controllers/auth_controller.dart';
import '../../../core/theme/app_theme.dart';

class CalendarScreen extends ConsumerStatefulWidget {
  const CalendarScreen({super.key});

  @override
  ConsumerState<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends ConsumerState<CalendarScreen> {
  DateTime _selectedDate = DateTime.now();
  DateTime _focusedDate = DateTime.now();
  
  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);
    
    return authState.maybeWhen(
      authenticated: (user) => _buildCalendarContent(context, ref, user),
      orElse: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            color: AppTheme.primaryOrange,
          ),
        ),
      ),
    );
  }

  Widget _buildCalendarContent(BuildContext context, WidgetRef ref, user) {
    final upcomingEvents = user.isOrganizer
        ? ref.watch(upcomingEventsByUserProvider(user.id))
        : ref.watch(upcomingEventsProvider);

    return Scaffold(
      backgroundColor: AppTheme.backgroundDark,
      appBar: AppBar(
        backgroundColor: AppTheme.backgroundDark,
        title: Text(
          'Calendar',
          style: AppTheme.heading3.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _selectedDate = DateTime.now();
                _focusedDate = DateTime.now();
              });
            },
            icon: const Icon(
              Icons.today,
              color: AppTheme.primaryOrange,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Custom Calendar Header
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppTheme.cardDark,
              border: Border(
                bottom: BorderSide(
                  color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                  width: 1,
                ),
              ),
            ),
            child: Column(
              children: [
                // Month/Year Navigation
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _focusedDate = DateTime(
                            _focusedDate.year,
                            _focusedDate.month - 1,
                          );
                        });
                      },
                      icon: const Icon(
                        Icons.chevron_left,
                        color: AppTheme.textPrimary,
                      ),
                    ),
                    Text(
                      _getMonthYear(_focusedDate),
                      style: AppTheme.heading3.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _focusedDate = DateTime(
                            _focusedDate.year,
                            _focusedDate.month + 1,
                          );
                        });
                      },
                      icon: const Icon(
                        Icons.chevron_right,
                        color: AppTheme.textPrimary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Days of Week
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
                      .map((day) => SizedBox(
                            width: 40,
                            child: Text(
                              day,
                              textAlign: TextAlign.center,
                              style: AppTheme.bodySmall.copyWith(
                                color: AppTheme.textSecondary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ))
                      .toList(),
                ),
                const SizedBox(height: 8),
                // Calendar Grid
                _buildCalendarGrid(upcomingEvents),
              ],
            ),
          ),
          
          // Events for Selected Date
          Expanded(
            child: upcomingEvents.when(
              loading: () => const Center(
                child: CircularProgressIndicator(
                  color: AppTheme.primaryOrange,
                ),
              ),
              error: (error, stackTrace) => Center(
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
                      'Failed to load events',
                      style: AppTheme.heading3,
                    ),
                  ],
                ),
              ),
              data: (events) => _buildEventsList(events),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCalendarGrid(AsyncValue<List<dynamic>> eventsAsync) {
    final firstDay = DateTime(_focusedDate.year, _focusedDate.month, 1);
    final startDate = firstDay.subtract(Duration(days: firstDay.weekday % 7));
    
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
      ),
      itemCount: 42, // 6 weeks
      itemBuilder: (context, index) {
        final date = startDate.add(Duration(days: index));
        final isCurrentMonth = date.month == _focusedDate.month;
        final isSelected = _isSameDay(date, _selectedDate);
        final isToday = _isSameDay(date, DateTime.now());
        final hasEvents = eventsAsync.maybeWhen(
          data: (events) => events.any((event) => 
            _isSameDay(event.startDate, date)),
          orElse: () => false,
        );
        
        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedDate = date;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: isSelected
                  ? AppTheme.primaryOrange
                  : isToday
                      ? AppTheme.primaryOrange.withValues(alpha: 0.1)
                      : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: hasEvents
                  ? Border.all(
                      color: AppTheme.primaryOrange.withValues(alpha: 0.5),
                      width: 1,
                    )
                  : null,
            ),
            child: Stack(
              children: [
                Center(
                  child: Text(
                    '${date.day}',
                    style: AppTheme.bodySmall.copyWith(
                      color: isSelected
                          ? Colors.white
                          : isCurrentMonth
                              ? AppTheme.textPrimary
                              : AppTheme.textSecondary.withValues(alpha: 0.5),
                      fontWeight: isToday || isSelected
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
                if (hasEvents && !isSelected)
                  Positioned(
                    bottom: 2,
                    right: 2,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: AppTheme.primaryOrange,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildEventsList(List<dynamic> events) {
    final selectedDateEvents = events.where((event) => 
      _isSameDay(event.startDate, _selectedDate)).toList();
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 4,
                height: 24,
                decoration: BoxDecoration(
                  color: AppTheme.primaryOrange,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                'Events on ${_formatDate(_selectedDate)}',
                style: AppTheme.heading3.copyWith(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: selectedDateEvents.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.event_busy_outlined,
                        size: 64,
                        color: AppTheme.textSecondary,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'No events on this date',
                        style: AppTheme.bodyLarge.copyWith(
                          color: AppTheme.textSecondary,
                        ),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: selectedDateEvents.length,
                  itemBuilder: (context, index) {
                    final event = selectedDateEvents[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: AppTheme.cardDark,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                          width: 1,
                        ),
                      ),
                      child: InkWell(
                        onTap: () => context.push('/event-details/${event.id}'),
                        borderRadius: BorderRadius.circular(12),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  Icons.event,
                                  color: AppTheme.primaryOrange,
                                  size: 24,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      event.title,
                                      style: AppTheme.bodyLarge.copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    if (event.description?.isNotEmpty == true) ...[
                                      const SizedBox(height: 4),
                                      Text(
                                        event.description!,
                                        style: AppTheme.bodySmall.copyWith(
                                          color: AppTheme.textSecondary,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          size: 14,
                                          color: AppTheme.textSecondary,
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          _formatTime(event.startDate),
                                          style: AppTheme.bodySmall.copyWith(
                                            color: AppTheme.textSecondary,
                                          ),
                                        ),
                                        const SizedBox(width: 16),
                                        Icon(
                                          Icons.location_on_outlined,
                                          size: 14,
                                          color: AppTheme.textSecondary,
                                        ),
                                        const SizedBox(width: 4),
                                        Expanded(
                                          child: Text(
                                            event.location ?? 'Location TBD',
                                            style: AppTheme.bodySmall.copyWith(
                                              color: AppTheme.textSecondary,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: AppTheme.textSecondary,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
        ),
        const SizedBox(height: 100), // Space for bottom navigation
      ],
    );
  }

  bool _isSameDay(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  String _getMonthYear(DateTime date) {
    const months = [
      'January', 'February', 'March', 'April', 'May', 'June',
      'July', 'August', 'September', 'October', 'November', 'December'
    ];
    return '${months[date.month - 1]} ${date.year}';
  }

  String _formatDate(DateTime date) {
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return '${date.day} ${months[date.month - 1]}, ${date.year}';
  }

  String _formatTime(DateTime date) {
    final hour = date.hour == 0 ? 12 : date.hour > 12 ? date.hour - 12 : date.hour;
    final minute = date.minute.toString().padLeft(2, '0');
    final period = date.hour >= 12 ? 'PM' : 'AM';
    return '$hour:$minute $period';
  }
} 