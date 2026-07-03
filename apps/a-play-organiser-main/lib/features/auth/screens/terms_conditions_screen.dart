import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../core/theme/app_theme.dart';

const String _legalEmail = String.fromEnvironment('LEGAL_EMAIL', defaultValue: '');

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({super.key});

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
          'Terms & Conditions',
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
                    BoxIcons.bx_file_blank,
                    size: 48,
                    color: AppTheme.primaryOrange,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'A Play Vendor Terms & Conditions',
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

            // Terms Sections
            _buildTermsSection(
              'Acceptance of Terms',
              'By accessing and using A Play Vendor, you accept and agree to be bound by the terms and provision of this agreement.',
              [
                'These terms apply to all users of the application',
                'If you do not agree to these terms, please do not use our service',
                'We reserve the right to modify these terms at any time',
                'Continued use constitutes acceptance of modified terms',
              ],
            ),

            const SizedBox(height: 24),

            _buildTermsSection(
              'Description of Service',
              'A Play Vendor is an event management platform that allows users to create, manage, and participate in events.',
              [
                'Event creation and management tools',
                'User registration and profile management',
                'Event discovery and participation features',
                'Communication tools between organizers and participants',
                'Payment processing for paid events',
              ],
            ),

            const SizedBox(height: 24),

            _buildTermsSection(
              'User Accounts',
              'You are responsible for maintaining the confidentiality of your account and password.',
              [
                'You must provide accurate and complete information',
                'You are responsible for all activities under your account',
                'You must notify us immediately of any unauthorized use',
                'We reserve the right to suspend or terminate accounts',
                'One person may not maintain multiple accounts',
              ],
            ),

            const SizedBox(height: 24),

            _buildTermsSection(
              'Event Organizer Responsibilities',
              'Event organizers have additional responsibilities when creating and managing events.',
              [
                'Provide accurate event information',
                'Comply with all applicable laws and regulations',
                'Ensure event safety and proper permits',
                'Handle refunds according to stated policies',
                'Maintain appropriate insurance coverage',
              ],
            ),

            const SizedBox(height: 24),

            _buildTermsSection(
              'Prohibited Uses',
              'You may not use our service for any unlawful or prohibited activities.',
              [
                'Illegal activities or events',
                'Harassment, abuse, or discrimination',
                'Spam or unsolicited communications',
                'Impersonation of others',
                'Distribution of malware or harmful content',
                'Violation of intellectual property rights',
              ],
            ),

            const SizedBox(height: 24),

            _buildTermsSection(
              'Content and Intellectual Property',
              'You retain rights to content you create, but grant us certain licenses.',
              [
                'You retain ownership of your content',
                'You grant us license to use content for service operation',
                'You must have rights to all content you upload',
                'We respect intellectual property rights of others',
                'Report copyright infringement to us immediately',
              ],
            ),

            const SizedBox(height: 24),

            _buildTermsSection(
              'Payment and Refunds',
              'Payment terms apply to paid events and premium features.',
              [
                'All payments are processed securely',
                'Refund policies are set by event organizers',
                'We may charge service fees for transactions',
                'Disputed charges should be reported immediately',
                'We are not responsible for organizer refund policies',
              ],
            ),

            const SizedBox(height: 24),

            _buildTermsSection(
              'Limitation of Liability',
              'Our liability is limited to the maximum extent permitted by law.',
              [
                'Service is provided "as is" without warranties',
                'We are not liable for event cancellations or changes',
                'We are not responsible for user interactions',
                'Maximum liability is limited to amounts paid to us',
                'Some jurisdictions do not allow liability limitations',
              ],
            ),

            const SizedBox(height: 24),

            _buildTermsSection(
              'Termination',
              'Either party may terminate this agreement under certain conditions.',
              [
                'You may delete your account at any time',
                'We may suspend or terminate accounts for violations',
                'Termination does not affect existing obligations',
                'Data may be deleted after account termination',
                'Some provisions survive termination',
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
                    'Contact Information',
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppTheme.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'If you have any questions about these Terms & Conditions, please contact us:',
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
                        _legalEmail.isEmpty ? 'Not available' : _legalEmail,
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

  Widget _buildTermsSection(String title, String description, List<String> points) {
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
