import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../auth/models/user_profile.dart';
import '../../../core/theme/app_theme.dart';

class WelcomeSection extends StatelessWidget {
  final UserProfile user;

  const WelcomeSection({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.surfaceDark,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppTheme.primaryOrange.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          // User Avatar
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: AppTheme.primaryOrange.withValues(alpha: 0.2),
                width: 2,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: user.avatarUrl != null
                  ? CachedNetworkImage(
                      imageUrl: user.avatarUrl!,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Container(
                        color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                        child: const Center(
                          child: Icon(
                            Icons.person,
                            color: AppTheme.primaryOrange,
                            size: 24,
                          ),
                        ),
                      ),
                      errorWidget: (context, url, error) => Container(
                        color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                        child: Center(
                          child: Text(
                            user.fullName?.substring(0, 1).toUpperCase() ?? 'U',
                            style: AppTheme.heading3.copyWith(
                              color: AppTheme.primaryOrange,
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(
                      color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                      child: Center(
                        child: Text(
                          user.fullName?.substring(0, 1).toUpperCase() ?? 'U',
                          style: AppTheme.heading3.copyWith(
                            color: AppTheme.primaryOrange,
                          ),
                        ),
                      ),
                    ),
            ),
          ),
          const SizedBox(width: 16),
          
          // User Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back!',
                  style: AppTheme.bodySmall.copyWith(
                    color: AppTheme.textSecondary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  user.fullName ?? 'User',
                  style: AppTheme.heading3.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (user.isOrganizer) ...[
                  const SizedBox(height: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: AppTheme.primaryOrange.withValues(alpha: 0.3),
                        width: 1,
                      ),
                    ),
                    child: Text(
                      'Organizer',
                      style: AppTheme.bodySmall.copyWith(
                        color: AppTheme.primaryOrange,
                        fontWeight: FontWeight.w600,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
          
          // Dashboard Button for Organizers
          if (user.isOrganizer)
            Container(
              decoration: BoxDecoration(
                color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppTheme.primaryOrange.withValues(alpha: 0.3),
                  width: 1,
                ),
              ),
              child: IconButton(
                onPressed: () {
                  // Navigate to organizer dashboard
                },
                icon: const Icon(
                  Icons.dashboard_outlined,
                  color: AppTheme.primaryOrange,
                  size: 20,
                ),
                tooltip: 'Dashboard',
              ),
            ),
        ],
      ),
    );
  }
} 