import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/services/storage_service.dart';

class ImagePickerWidget extends StatefulWidget {
  final String? initialImageUrl;
  final ValueChanged<String?> onImageChanged;
  final String label;
  final String hint;

  const ImagePickerWidget({
    super.key,
    this.initialImageUrl,
    required this.onImageChanged,
    this.label = 'Cover Image',
    this.hint = 'Tap to select image',
  });

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  String? _imageUrl;
  bool _isUploading = false;

  @override
  void initState() {
    super.initState();
    _imageUrl = widget.initialImageUrl;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppTheme.textPrimary,
          ),
        ),
        const SizedBox(height: 6),
        
        InkWell(
          onTap: _isUploading ? null : _pickAndUploadImage,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppTheme.surfaceDark,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: _imageUrl != null 
                    ? AppTheme.primaryOrange.withValues(alpha: 0.3)
                    : AppTheme.surfaceDark,
              ),
            ),
            child: _isUploading
                ? _buildUploadingState()
                : _imageUrl != null
                    ? _buildImagePreview()
                    : _buildEmptyState(),
          ),
        ),
        
        if (_imageUrl != null) ...[
          const SizedBox(height: 8),
          Row(
            children: [
              TextButton.icon(
                onPressed: _isUploading ? null : _pickAndUploadImage,
                icon: const Icon(Icons.edit, size: 16),
                label: const Text('Change Image'),
                style: TextButton.styleFrom(
                  foregroundColor: AppTheme.primaryOrange,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
              ),
              const SizedBox(width: 8),
              TextButton.icon(
                onPressed: _isUploading ? null : _removeImage,
                icon: const Icon(Icons.delete_outline, size: 16),
                label: const Text('Remove'),
                style: TextButton.styleFrom(
                  foregroundColor: AppTheme.errorColor,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }

  Widget _buildEmptyState() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppTheme.primaryOrange.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.add_photo_alternate_outlined,
              size: 32,
              color: AppTheme.primaryOrange,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            widget.hint,
            style: const TextStyle(
              fontSize: 14,
              color: AppTheme.textSecondary,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'JPG, PNG or WEBP • Max 5MB',
            style: TextStyle(
              fontSize: 12,
              color: AppTheme.textSecondary,
            ),
          ),
        ],
    );
  }

  Widget _buildImagePreview() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: _imageUrl!,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            placeholder: (context, url) => Container(
              color: AppTheme.cardDark,
              child: const Center(
                child: CircularProgressIndicator(
                  color: AppTheme.primaryOrange,
                  strokeWidth: 2,
                ),
              ),
            ),
            errorWidget: (context, url, error) => Container(
              color: AppTheme.cardDark,
              child: const Center(
                child: Icon(
                  Icons.broken_image_outlined,
                  size: 32,
                  color: AppTheme.textSecondary,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.edit,
              size: 16,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUploadingState() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(
            color: AppTheme.primaryOrange,
            strokeWidth: 3,
          ),
          const SizedBox(height: 16),
          const Text(
            'Uploading image...',
            style: TextStyle(
              fontSize: 14,
              color: AppTheme.textSecondary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
    );
  }

  Future<void> _pickAndUploadImage() async {
    setState(() {
      _isUploading = true;
    });

    try {
      final result = await StorageService.pickAndUploadEventImage();
      
      result.fold(
        (failure) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(failure.when(
                  serverFailure: (message) => message,
                  networkFailure: (message) => message,
                  authFailure: (message) => message,
                  unknownFailure: (message) => message,
                )),
                backgroundColor: AppTheme.errorColor,
              ),
            );
          }
        },
        (imageUrl) {
          setState(() {
            _imageUrl = imageUrl;
          });
          widget.onImageChanged(imageUrl);
        },
      );
    } finally {
      if (mounted) {
        setState(() {
          _isUploading = false;
        });
      }
    }
  }

  Future<void> _removeImage() async {
    if (_imageUrl != null) {
      setState(() {
        _imageUrl = null;
      });
      widget.onImageChanged(null);
    }
  }
} 