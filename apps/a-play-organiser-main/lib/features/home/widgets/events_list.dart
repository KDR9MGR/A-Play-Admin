import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';
import 'package:animate_do/animate_do.dart';
import 'package:ionicons/ionicons.dart';

import '../models/event.dart';
import '../../../core/theme/app_theme.dart';

class EventsList extends StatelessWidget {
  final List<Event> events;
  final String title;

  const EventsList({
    super.key,
    required this.events,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    if (events.isEmpty) {
      return FadeInUp(
        duration: const Duration(milliseconds: 600),
        child: EmptyEventsWidget(title: title),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInLeft(
          duration: const Duration(milliseconds: 500),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    title.contains('My') ? Ionicons.calendar_outline : Ionicons.calendar,
                    color: AppTheme.primaryOrange,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: AppTheme.heading3.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppTheme.textPrimary,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: AppTheme.primaryOrange.withValues(alpha: 0.2),
                      width: 1,
                    ),
                  ),
                  child: Text(
                    '${events.length}',
                    style: AppTheme.bodySmall.copyWith(
                      color: AppTheme.primaryOrange,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 240,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: events.length,
            itemBuilder: (context, index) {
              return FadeInRight(
                duration: const Duration(milliseconds: 600),
                delay: Duration(milliseconds: 100 * index),
                child: EventCard(
                  event: events[index],
                  isFirst: index == 0,
                  isLast: index == events.length - 1,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class EventCard extends StatelessWidget {
  final Event event;
  final bool isFirst;
  final bool isLast;

  const EventCard({
    super.key,
    required this.event,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      margin: EdgeInsets.only(
        left: isFirst ? 8 : 6,
        right: isLast ? 8 : 6,
      ),
      child: Card(
        elevation: 8,
        color: AppTheme.cardDark,
        shadowColor: AppTheme.primaryOrange.withValues(alpha: 0.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: AppTheme.primaryOrange.withValues(alpha: 0.2),
            width: 1,
          ),
        ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Event Image with gradient overlay
                      Stack(
                        children: [
                          Container(
                            height: 130,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppTheme.cardDark,
                            ),
                            child: event.coverImage != null
                        ? CachedNetworkImage(
                            imageUrl: event.coverImage!,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => Container(
                              color: AppTheme.primaryOrange.withValues(alpha: 0.05),
                              child: const Center(
                                child: CircularProgressIndicator(
                                  color: AppTheme.primaryOrange,
                                  strokeWidth: 2,
                                ),
                              ),
                            ),
                            errorWidget: (context, url, error) => Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    AppTheme.primaryOrange.withValues(alpha: 0.1),
                                    AppTheme.primaryOrange.withValues(alpha: 0.05),
                                  ],
                                ),
                              ),
                              child: const Center(
                                child: Icon(
                                  Ionicons.calendar_outline,
                                  color: AppTheme.primaryOrange,
                                  size: 40,
                                ),
                              ),
                            ),
                          )
                        : Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  AppTheme.primaryOrange.withValues(alpha: 0.1),
                                  AppTheme.primaryOrange.withValues(alpha: 0.05),
                                ],
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Ionicons.calendar_outline,
                                color: AppTheme.primaryOrange,
                                size: 40,
                              ),
                            ),
                          ),
                  ),
                  // Date badge
                  Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppTheme.backgroundDark.withValues(alpha: 0.9),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: AppTheme.primaryOrange.withValues(alpha: 0.3),
                          width: 1,
                        ),
                      ),
                      child: Text(
                        DateFormat('MMM dd').format(event.startDate),
                        style: AppTheme.bodySmall.copyWith(
                          color: AppTheme.primaryOrange,
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Event Details
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        event.title,
                        style: AppTheme.bodyLarge.copyWith(
                          fontWeight: FontWeight.w700,
                          height: 1.2,
                          fontSize: 16,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        event.description,
                        style: AppTheme.bodySmall.copyWith(
                          color: AppTheme.textSecondary,
                          height: 1.3,
                          fontSize: 12,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Spacer(),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Icon(
                              Ionicons.location_outline,
                              size: 12,
                              color: AppTheme.primaryOrange,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              event.location ?? 'Venue to be announced',
                              style: AppTheme.bodySmall.copyWith(
                                color: AppTheme.textSecondary,
                                fontSize: 11,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EmptyEventsWidget extends StatelessWidget {
  final String title;

  const EmptyEventsWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppTheme.surfaceDark,
            AppTheme.primaryOrange.withValues(alpha: 0.03),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppTheme.primaryOrange.withValues(alpha: 0.1),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: AppTheme.primaryOrange.withValues(alpha: 0.05),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Pulse(
            infinite: true,
            duration: const Duration(seconds: 2),
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppTheme.primaryOrange.withValues(alpha: 0.2),
                    AppTheme.primaryOrange.withValues(alpha: 0.1),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: AppTheme.primaryOrange.withValues(alpha: 0.3),
                    blurRadius: 15,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: const Icon(
                                    Ionicons.calendar_outline,
                color: AppTheme.primaryOrange,
                size: 32,
              ),
            ),
          ),
          const SizedBox(height: 20),
          FadeInUp(
            delay: const Duration(milliseconds: 200),
            child: Text(
              title.contains('My') ? 'No events created yet' : 'No upcoming events',
              style: AppTheme.bodyLarge.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 12),
          FadeInUp(
            delay: const Duration(milliseconds: 400),
            child: Text(
              title.contains('My')
                  ? 'Tap the + button to create your first event'
                  : 'Check back later for new events from organizers',
              style: AppTheme.bodyMedium.copyWith(
                color: AppTheme.textSecondary,
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          if (title.contains('My')) ...[
            const SizedBox(height: 20),
            FadeInUp(
              delay: const Duration(milliseconds: 600),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppTheme.primaryOrange.withValues(alpha: 0.2),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Ionicons.bulb_outline,
                      color: AppTheme.primaryOrange,
                      size: 16,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Start organizing events today!',
                      style: AppTheme.bodySmall.copyWith(
                        color: AppTheme.primaryOrange,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
} 
