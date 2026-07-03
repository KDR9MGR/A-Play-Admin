import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../models/event.dart';
import '../../../core/theme/app_theme.dart';

class ClubsGrid extends StatelessWidget {
  final List<Club> clubs;

  const ClubsGrid({
    super.key,
    required this.clubs,
  });

  @override
  Widget build(BuildContext context) {
    if (clubs.isEmpty) {
      return const EmptyClubsWidget();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Text(
            'Clubs & Venues',
            style: AppTheme.heading3.copyWith(
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimary,
            ),
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.1,
          ),
          itemCount: clubs.length,
          itemBuilder: (context, index) {
            return ClubCard(club: clubs[index]);
          },
        ),
      ],
    );
  }
}

class ClubCard extends StatelessWidget {
  final Club club;

  const ClubCard({
    super.key,
    required this.club,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppTheme.surfaceDark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: AppTheme.primaryOrange.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: InkWell(
        onTap: () {
          // Navigate to club details
        },
        borderRadius: BorderRadius.circular(16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Club Logo
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppTheme.cardDark,
                  ),
                  child: club.logoUrl != null
                      ? CachedNetworkImage(
                          imageUrl: club.logoUrl!,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => Container(
                            color: AppTheme.primaryOrange.withValues(alpha: 0.05),
                            child: const Center(
                              child: Icon(
                                Icons.business_outlined,
                                color: AppTheme.textSecondary,
                                size: 28,
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) => Container(
                            color: AppTheme.primaryOrange.withValues(alpha: 0.05),
                            child: const Center(
                              child: Icon(
                                Icons.business_outlined,
                                color: AppTheme.textSecondary,
                                size: 28,
                              ),
                            ),
                          ),
                        )
                      : Container(
                          color: AppTheme.primaryOrange.withValues(alpha: 0.05),
                          child: const Center(
                            child: Icon(
                              Icons.business_outlined,
                              color: AppTheme.textSecondary,
                              size: 28,
                            ),
                          ),
                        ),
                ),
              ),

              // Club Details
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        club.name,
                        style: AppTheme.bodyMedium.copyWith(
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Expanded(
                        child: Text(
                          club.description,
                          style: AppTheme.bodySmall.copyWith(
                            color: AppTheme.textSecondary,
                            height: 1.3,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
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

class EmptyClubsWidget extends StatelessWidget {
  const EmptyClubsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: AppTheme.surfaceDark,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppTheme.textSecondary.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: AppTheme.primaryOrange.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(
              Icons.business_outlined,
              color: AppTheme.primaryOrange,
              size: 28,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'No clubs available',
            style: AppTheme.bodyLarge.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Clubs will appear here when available',
            style: AppTheme.bodySmall.copyWith(
              color: AppTheme.textSecondary,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
} 