import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/theme/app_theme.dart';

const String _supportEmail = String.fromEnvironment('SUPPORT_EMAIL', defaultValue: '');
const String _bugReportEmail = String.fromEnvironment('BUG_REPORT_EMAIL', defaultValue: '');
const String _userGuideUrl = String.fromEnvironment('USER_GUIDE_URL', defaultValue: '');
const String _tutorialsUrl = String.fromEnvironment('TUTORIALS_URL', defaultValue: '');
const String _playStoreUrl = String.fromEnvironment('PLAY_STORE_URL', defaultValue: '');

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundDark,
      appBar: AppBar(
        backgroundColor: AppTheme.backgroundDark,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppTheme.textPrimary),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Help & Support',
          style: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppTheme.textPrimary,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // App Info Card
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppTheme.surfaceDark,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      BoxIcons.bx_support,
                      size: 40,
                      color: AppTheme.primaryOrange,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'A Play Vendor',
                    style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppTheme.textPrimary,
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Event Management Platform',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: AppTheme.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Contact Section
            _buildSectionHeader('Contact Us'),
            const SizedBox(height: 16),
            _buildContactCard([
              _buildContactItem(
                BoxIcons.bx_envelope,
                'Email Support',
                _supportEmail.isEmpty ? 'Not available' : _supportEmail,
                _supportEmail.isEmpty ? null : 'mailto:$_supportEmail',
              ),
            ]),

            const SizedBox(height: 32),

            // FAQ Section
            _buildSectionHeader('Frequently Asked Questions'),
            const SizedBox(height: 16),
            _buildFAQCard([
              _buildFAQItem(
                'How do I create an event?',
                'Tap the "+" button on the home screen and fill in your event details.',
              ),
              _buildFAQItem(
                'Can I edit my events after creation?',
                'Yes, you can edit your events anytime from the event details page.',
              ),
              _buildFAQItem(
                'How do I become an organizer?',
                'Sign up with the organizer option during registration or contact support.',
              ),
              _buildFAQItem(
                'Is there a limit to the number of events?',
                'No, you can create unlimited events as an organizer.',
              ),
            ]),

            const SizedBox(height: 32),

            // Resources Section
            _buildSectionHeader('Resources'),
            const SizedBox(height: 16),
            _buildResourceCard([
              _buildResourceItem(
                BoxIcons.bx_book_open,
                'User Guide',
                'Learn how to use all features',
                () => _launchURL(_userGuideUrl),
              ),
              _buildResourceItem(
                BoxIcons.bx_video,
                'Video Tutorials',
                'Watch step-by-step tutorials',
                () => _launchURL(_tutorialsUrl),
              ),
              _buildResourceItem(
                BoxIcons.bx_bug,
                'Report a Bug',
                'Help us improve the app',
                () => _launchURL(_bugReportEmail.isEmpty ? '' : 'mailto:$_bugReportEmail'),
              ),
              _buildResourceItem(
                BoxIcons.bx_star,
                'Rate Us',
                'Share your feedback',
                () => _showRatingDialog(context),
              ),
            ]),

            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: AppTheme.textPrimary,
        letterSpacing: -0.2,
      ),
    );
  }

  Widget _buildContactCard(List<Widget> children) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.surfaceDark,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppTheme.primaryOrange.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: Column(
        children: children.asMap().entries.map((entry) {
          final index = entry.key;
          final child = entry.value;
          return Column(
            children: [
              child,
              if (index < children.length - 1)
                Divider(
                  color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                  height: 1,
                ),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String title, String subtitle, String? url) {
    return InkWell(
      onTap: url != null ? () => _launchURL(url) : null,
      borderRadius: BorderRadius.circular(16),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icon,
                size: 20,
                color: AppTheme.primaryOrange,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      color: AppTheme.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            if (url != null)
              Icon(
                BoxIcons.bx_chevron_right,
                size: 16,
                color: AppTheme.textSecondary,
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildFAQCard(List<Widget> children) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.surfaceDark,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppTheme.primaryOrange.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: Column(children: children),
    );
  }

  Widget _buildFAQItem(String question, String answer) {
    return ExpansionTile(
      title: Text(
        question,
        style: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppTheme.textPrimary,
        ),
      ),
      iconColor: AppTheme.primaryOrange,
      collapsedIconColor: AppTheme.textSecondary,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Text(
            answer,
            style: GoogleFonts.inter(
              fontSize: 13,
              color: AppTheme.textSecondary,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildResourceCard(List<Widget> children) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.surfaceDark,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppTheme.primaryOrange.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: Column(
        children: children.asMap().entries.map((entry) {
          final index = entry.key;
          final child = entry.value;
          return Column(
            children: [
              child,
              if (index < children.length - 1)
                Divider(
                  color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                  height: 1,
                ),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _buildResourceItem(IconData icon, String title, String subtitle, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icon,
                size: 20,
                color: AppTheme.primaryOrange,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      color: AppTheme.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              BoxIcons.bx_chevron_right,
              size: 16,
              color: AppTheme.textSecondary,
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (url.trim().isEmpty) return;
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  void _showRatingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.surfaceDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Text(
          'Rate A Play Organiser',
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: AppTheme.textPrimary,
          ),
        ),
        content: Text(
          'Thank you for using A Play Organiser! Your feedback helps us improve.',
          style: GoogleFonts.inter(
            fontSize: 14,
            color: AppTheme.textSecondary,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Later',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                color: AppTheme.textSecondary,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              _launchURL(_playStoreUrl);
            },
            child: Text(
              'Rate Now',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                color: AppTheme.primaryOrange,
              ),
            ),
          ),
        ],
      ),
    );
  }
} 
