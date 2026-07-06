import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../auth/controllers/auth_controller.dart';
import '../../../core/theme/app_theme.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authControllerProvider);

    return authState.maybeWhen(
      authenticated: (user) => _buildProfileContent(context, ref, user),
      orElse:
          () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(color: AppTheme.primaryOrange),
            ),
          ),
    );
  }

  Widget _buildProfileContent(BuildContext context, WidgetRef ref, user) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundDark,
      appBar: AppBar(
        backgroundColor: AppTheme.backgroundDark,
        title: Text(
          'Profile',
          style: AppTheme.heading3.copyWith(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              context.push('/edit-profile');
            },
            icon: const Icon(
              Icons.edit_outlined,
              color: AppTheme.primaryOrange,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Profile Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppTheme.cardDark,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Hero(
                    tag: 'profile-avatar',
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppTheme.primaryOrange,
                          width: 3,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppTheme.primaryOrange.withValues(alpha: 0.2),
                            blurRadius: 20,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 47,
                        backgroundColor: AppTheme.surfaceDark,
                        backgroundImage:
                            user.avatarUrl != null
                                ? NetworkImage(user.avatarUrl!)
                                : null,
                            child: user.avatarUrl == null
                                ? Text(
                                    (user.fullName?.isNotEmpty == true)
                                        ? user.fullName![0].toUpperCase()
                                        : (user.isOrganizer && (user.businessName ?? '').isNotEmpty)
                                            ? user.businessName![0].toUpperCase()
                                            : 'U',
                                    style: AppTheme.heading1.copyWith(
                                      color: AppTheme.primaryOrange,
                                      fontSize: 36,
                                    ),
                                  )
                                : null,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    (user.fullName?.isNotEmpty == true)
                        ? user.fullName!
                        : (user.isOrganizer && (user.businessName ?? '').isNotEmpty)
                            ? user.businessName!
                            : 'User',
                    style: AppTheme.heading2.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color:
                          user.isOrganizer
                              ? AppTheme.primaryOrange.withValues(alpha: 0.1)
                              : AppTheme.successColor.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color:
                            user.isOrganizer
                                ? AppTheme.primaryOrange.withValues(alpha: 0.3)
                                : AppTheme.successColor.withValues(alpha: 0.3),
                        width: 1,
                      ),
                    ),
                    child: Text(
                      user.isOrganizer ? 'ORGANIZER' : 'MEMBER',
                      style: AppTheme.bodySmall.copyWith(
                        color:
                            user.isOrganizer
                                ? AppTheme.primaryOrange
                                : AppTheme.successColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Profile Information
            Container(
              decoration: BoxDecoration(
                color: AppTheme.cardDark,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      'Account Information',
                      style: AppTheme.heading3.copyWith(fontSize: 18),
                    ),
                  ),
                  if (user.isOrganizer && (user.businessName ?? '').isNotEmpty)
                    _buildInfoItem(
                      icon: Icons.business_outlined,
                      label: 'Business Name',
                      value: user.businessName!,
                    ),
                  //added
                  if (user.phone != null)
                    _buildInfoItem(
                      icon: Icons.phone_outlined,
                      label: 'Phone Number',
                      value: user.phone!,
                    ),
                  _buildInfoItem(
                    icon: Icons.calendar_today_outlined,
                    label: 'Member since',
                    value: _formatDate(user.createdAt),
                  ),
                  FutureBuilder<Map<String, dynamic>?>(
                    future: ref
                        .read(authServiceProvider)
                        .getUserSubscription(userId: user.id)
                        .then((result) => result.fold((_) => null, (data) => data)),
                    builder: (context, snapshot) {
                      final tier = snapshot.data?['tier']?.toString() ?? 'Free';
                      final points = snapshot.data?['reward_points']?.toString() ?? '0';
                      return Column(
                        children: [
                          _buildInfoItem(
                            icon: Icons.workspace_premium_outlined,
                            label: 'Membership Tier',
                            value: tier,
                          ),
                          _buildInfoItem(
                            icon: Icons.stars_outlined,
                            label: 'Points',
                            value: '$points pts',
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Quick Actions
            Container(
              decoration: BoxDecoration(
                color: AppTheme.cardDark,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      'Quick Actions',
                      style: AppTheme.heading3.copyWith(fontSize: 18),
                    ),
                  ),
                  if (user.isOrganizer) ...[
                    _buildActionItem(
                      icon: Icons.add_circle_outline,
                      label: 'Create Event',
                      onTap: () => context.push('/create-event'),
                    ),
                    _buildActionItem(
                      icon: Icons.event_note_outlined,
                      label: 'My Events',
                      onTap: () {
                        // Navigate to events tab
                      },
                    ),
                    _buildActionItem(
                      icon: Icons.storefront_outlined,
                      label: 'My Venues',
                      onTap: () => context.push('/my-venues'),
                    ),
                  ],
                  _buildActionItem(
                    icon: Icons.settings_outlined,
                    label: 'Settings',
                    onTap: () {
                      // Add settings screen navigation
                    },
                  ),
                  _buildActionItem(
                    icon: Icons.help_outline,
                    label: 'Help & Support',
                    onTap: () {
                      context.push('/help-support');
                    },
                  ),
                  _buildActionItem(
                    icon: Icons.shield_outlined,
                    label: 'Privacy Policy',
                    onTap: () {
                      context.push('/privacy-policy');
                    },
                  ),
                  _buildActionItem(
                    icon: Icons.description_outlined,
                    label: 'Terms & Conditions',
                    onTap: () {
                      context.push('/terms-conditions');
                    },
                  ),
                  _buildActionItem(
                    icon: Icons.logout,
                    label: 'Sign Out',
                    onTap: () => _showSignOutDialog(context, ref),
                    isDestructive: true,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Delete Account Section
            Container(
              decoration: BoxDecoration(
                color: AppTheme.cardDark,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: AppTheme.errorColor.withValues(alpha: 0.3),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.warning_amber_rounded,
                              color: AppTheme.errorColor,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Danger Zone',
                              style: AppTheme.heading3.copyWith(
                                fontSize: 18,
                                color: AppTheme.errorColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Once you delete your account, there is no going back. Please be certain.',
                          style: AppTheme.bodySmall.copyWith(
                            color: AppTheme.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  _buildActionItem(
                    icon: Icons.delete_forever_outlined,
                    label: 'Delete Account',
                    onTap: () => _showDeleteAccountDialog(context, ref),
                    isDestructive: true,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 100), // Space for bottom navigation
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: AppTheme.surfaceDark, width: 0.5),
        ),
      ),
      child: Row(
        children: [
          Icon(icon, size: 20, color: AppTheme.textSecondary),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: AppTheme.bodySmall.copyWith(
                    color: AppTheme.textSecondary,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: AppTheme.bodyMedium.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionItem({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
    bool isDestructive = false,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: AppTheme.surfaceDark, width: 0.5),
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color:
                  isDestructive ? AppTheme.errorColor : AppTheme.textSecondary,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                label,
                style: AppTheme.bodyMedium.copyWith(
                  color:
                      isDestructive
                          ? AppTheme.errorColor
                          : AppTheme.textPrimary,
                  fontWeight: FontWeight.w500,
                ),
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
    );
  }

  String _formatDate(DateTime date) {
    final months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return '${months[date.month - 1]} ${date.year}';
  }

  void _showSignOutDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            backgroundColor: AppTheme.surfaceDark,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            title: Text('Sign Out', style: AppTheme.heading3),
            content: Text(
              'Are you sure you want to sign out?',
              style: AppTheme.bodyMedium.copyWith(
                color: AppTheme.textSecondary,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  'Cancel',
                  style: AppTheme.bodyMedium.copyWith(
                    color: AppTheme.textSecondary,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  ref.read(authControllerProvider.notifier).signOut();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.errorColor,
                ),
                child: const Text('Sign Out'),
              ),
            ],
          ),
    );
  }

  void _showDeleteAccountDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            backgroundColor: AppTheme.surfaceDark,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            title: Row(
              children: [
                Icon(
                  Icons.warning_amber_rounded,
                  color: AppTheme.errorColor,
                  size: 24,
                ),
                const SizedBox(width: 12),
                Text('Delete Account', style: AppTheme.heading3),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'This action cannot be undone. This will permanently delete your account and remove all your data from our servers.',
                  style: AppTheme.bodyMedium.copyWith(
                    color: AppTheme.textSecondary,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppTheme.errorColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppTheme.errorColor.withValues(alpha: 0.3),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: AppTheme.errorColor,
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'All your events, registrations, and personal information will be lost.',
                          style: AppTheme.bodySmall.copyWith(
                            color: AppTheme.errorColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  'Cancel',
                  style: AppTheme.bodyMedium.copyWith(
                    color: AppTheme.textSecondary,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  ref.read(authControllerProvider.notifier).deleteAccount();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.errorColor,
                ),
                child: const Text('Delete Forever'),
              ),
            ],
          ),
    );
  }
}
