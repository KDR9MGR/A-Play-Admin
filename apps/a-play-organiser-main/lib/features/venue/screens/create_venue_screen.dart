import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/services/storage_service.dart';
import '../../../core/widgets/location_autocomplete_field.dart';
import '../../home/widgets/image_picker_widget.dart';
import '../providers/venue_provider.dart';
import '../models/venue.dart';

class CreateVenueScreen extends ConsumerStatefulWidget {
  const CreateVenueScreen({super.key});

  @override
  ConsumerState<CreateVenueScreen> createState() => _CreateVenueScreenState();
}

class _CreateVenueScreenState extends ConsumerState<CreateVenueScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _addressController = TextEditingController();
  final _capacityController = TextEditingController();

  String _selectedType = venueTypes.first;
  String? _imageUrl;
  bool _isLoading = false;

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _addressController.dispose();
    _capacityController.dispose();
    super.dispose();
  }

  Future<void> _createVenue() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() => _isLoading = true);

    try {
      final service = ref.read(venueServiceProvider);
      final result = await service.createVenue(
        name: _nameController.text.trim(),
        type: _selectedType,
        address: _addressController.text.trim(),
        description: _descriptionController.text.trim().isEmpty
            ? null
            : _descriptionController.text.trim(),
        capacity: int.tryParse(_capacityController.text.trim()),
        images: _imageUrl != null ? [_imageUrl!] : const [],
      );

      result.fold(
        (failure) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Failed to create venue: ${failure.when(
                  serverFailure: (m) => m,
                  networkFailure: (m) => m,
                  authFailure: (m) => m,
                  unknownFailure: (m) => m,
                )}'),
                backgroundColor: AppTheme.errorColor,
              ),
            );
          }
        },
        (venue) {
          if (mounted) {
            ref.invalidate(myVenuesProvider);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  'Venue submitted! It will appear in your event venue list once an admin approves it.',
                ),
                backgroundColor: AppTheme.successColor,
              ),
            );
            context.pop();
          }
        },
      );
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundDark,
      appBar: AppBar(
        backgroundColor: AppTheme.backgroundDark,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        title: const Text(
          'Create Venue',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppTheme.textPrimary,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.close, color: AppTheme.textPrimary),
          onPressed: () => context.pop(),
        ),
        actions: [
          TextButton(
            onPressed: _isLoading ? null : _createVenue,
            child: _isLoading
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: AppTheme.primaryOrange,
                    ),
                  )
                : const Text(
                    'Submit',
                    style: TextStyle(
                      color: AppTheme.primaryOrange,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Row(
                children: [
                  Icon(Icons.info_outline, color: AppTheme.primaryOrange, size: 20),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'New venues are reviewed by our team before they can be booked. '
                      'You can create events under this venue once it’s approved.',
                      style: TextStyle(color: AppTheme.textSecondary, fontSize: 13),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _buildTextField(
              controller: _nameController,
              label: 'Venue Name *',
              hint: 'e.g. The Grand Lounge',
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter a venue name';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            _buildTypeSelector(),
            const SizedBox(height: 16),
            LocationAutocompleteField(
              controller: _addressController,
              label: 'Address *',
              hint: 'Search for an address...',
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter an address';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            _buildTextField(
              controller: _capacityController,
              label: 'Capacity (Optional)',
              hint: 'e.g. 200',
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            _buildTextField(
              controller: _descriptionController,
              label: 'Description (Optional)',
              hint: 'Tell us about this venue',
              maxLines: 3,
            ),
            const SizedBox(height: 16),
            ImagePickerWidget(
              initialImageUrl: _imageUrl,
              onImageChanged: (url) => setState(() => _imageUrl = url),
              label: 'Venue Photo (Optional)',
              hint: 'Tap to add a photo',
              uploadFunction: StorageService.pickAndUploadVenueImage,
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _isLoading ? null : _createVenue,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.primaryOrange,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Submit for Approval',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hint,
    int maxLines = 1,
    TextInputType? keyboardType,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppTheme.textPrimary,
          ),
        ),
        const SizedBox(height: 6),
        TextFormField(
          controller: controller,
          maxLines: maxLines,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: AppTheme.textSecondary),
            filled: true,
            fillColor: AppTheme.surfaceDark,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: AppTheme.surfaceDark),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppTheme.primaryOrange),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppTheme.errorColor),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
          style: const TextStyle(color: AppTheme.textPrimary),
          validator: validator,
        ),
      ],
    );
  }

  Widget _buildTypeSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Venue Type *',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppTheme.textPrimary,
          ),
        ),
        const SizedBox(height: 6),
        DropdownButtonFormField<String>(
          initialValue: _selectedType,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppTheme.surfaceDark,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
          dropdownColor: AppTheme.surfaceDark,
          items: venueTypes.map((type) {
            return DropdownMenuItem(
              value: type,
              child: Text(
                type[0].toUpperCase() + type.substring(1),
                style: const TextStyle(color: AppTheme.textPrimary),
              ),
            );
          }).toList(),
          onChanged: (value) {
            if (value != null) {
              setState(() => _selectedType = value);
            }
          },
        ),
      ],
    );
  }
}
