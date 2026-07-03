import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../core/theme/app_theme.dart';

const String _privacyEmail = String.fromEnvironment('PRIVACY_EMAIL', defaultValue: '');

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

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
          'Privacy Policy',
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
            // Header
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
                  Icon(
                    BoxIcons.bx_shield_quarter,
                    size: 48,
                    color: AppTheme.primaryOrange,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'A Play Vendor Privacy Policy',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppTheme.textPrimary,
                      letterSpacing: -0.2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Last updated: January 2025',
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      color: AppTheme.textSecondary,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Privacy Sections
            _buildPrivacySection(
              'Information We Collect',
              'We collect information you provide directly to us, such as when you create an account, organize events, or contact us for support.',
              [
                'Personal information (name, email, phone number)',
                'Event information you create or participate in',
                'Device information and usage data',
                'Location information (with your permission)',
              ],
            ),

            const SizedBox(height: 24),

            _buildPrivacySection(
              'How We Use Your Information',
              'We use the information we collect to provide, maintain, and improve our services.',
              [
                'To create and manage your account',
                'To enable event creation and participation',
                'To send you important notifications',
                'To provide customer support',
                'To improve our app and services',
              ],
            ),

            const SizedBox(height: 24),

            _buildPrivacySection(
              'Information Sharing',
              'We do not sell, trade, or otherwise transfer your personal information to third parties without your consent, except as described below.',
              [
                'With event organizers when you join their events',
                'With service providers who assist us',
                'When required by law or to protect our rights',
                'In connection with a business transfer',
              ],
            ),

            const SizedBox(height: 24),

            _buildPrivacySection(
              'Data Security',
              'We implement appropriate security measures to protect your personal information.',
              [
                'Encryption of sensitive data',
                'Secure server infrastructure',
                'Regular security audits',
                'Limited access to personal information',
              ],
            ),

            const SizedBox(height: 24),

            _buildPrivacySection(
              'Your Rights',
              'You have certain rights regarding your personal information.',
              [
                'Access and review your personal information',
                'Correct inaccurate information',
                'Delete your account and data',
                'Opt-out of marketing communications',
                'Data portability',
              ],
            ),

            const SizedBox(height: 24),

            _buildPrivacySection(
              'Cookies and Tracking',
              'We use cookies and similar technologies to enhance your experience.',
              [
                'Essential cookies for app functionality',
                'Analytics to understand app usage',
                'Preference cookies to remember your settings',
                'You can control cookie preferences in your device settings',
              ],
            ),

            const SizedBox(height: 24),

            _buildPrivacySection(
              'Children\'s Privacy',
              'Our service is not intended for children under 13.',
              [
                'We do not knowingly collect information from children under 13',
                'If we discover such information, we will delete it',
                'Parents can contact us if they believe we have collected their child\'s information',
              ],
            ),

            const SizedBox(height: 24),

            _buildPrivacySection(
              'Changes to Privacy Policy',
              'We may update this privacy policy from time to time.',
              [
                'We will notify you of significant changes',
                'Continued use constitutes acceptance of changes',
                'Previous versions are available upon request',
              ],
            ),

            const SizedBox(height: 32),

            // Contact Section
            Container(
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
                  Text(
                    'Contact Us',
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppTheme.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'If you have any questions about this Privacy Policy, please contact us:',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: AppTheme.textSecondary,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(
                        BoxIcons.bx_envelope,
                        size: 16,
                        color: AppTheme.primaryOrange,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        _privacyEmail.isEmpty ? 'Not available' : _privacyEmail,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: AppTheme.primaryOrange,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  Widget _buildPrivacySection(String title, String description, List<String> points) {
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
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: AppTheme.textPrimary,
              letterSpacing: -0.2,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: GoogleFonts.inter(
              fontSize: 14,
              color: AppTheme.textSecondary,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 16),
          ...points.map((point) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 6,
                  height: 6,
                  margin: const EdgeInsets.only(top: 6, right: 12),
                  decoration: BoxDecoration(
                    color: AppTheme.primaryOrange,
                    shape: BoxShape.circle,
                  ),
                ),
                Expanded(
                  child: Text(
                    point,
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      color: AppTheme.textSecondary,
                      height: 1.4,
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
} 
