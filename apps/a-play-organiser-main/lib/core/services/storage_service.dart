import 'dart:typed_data';
import 'package:fpdart/fpdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../config/supabase_config.dart';
import '../utils/app_failure.dart';

class StorageService {
  static final _supabase = Supabase.instance.client;
  static const String _eventImagesBucket = SupabaseConfig.eventImagesBucket;

  /// Pick image from gallery
  static Future<Either<AppFailure, XFile>> pickImageFromGallery() async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 1920,
        maxHeight: 1080,
        imageQuality: 85,
      );

      if (image == null) {
        return Left(AppFailure.unknownFailure('No image selected'));
      }

      return Right(image);
    } catch (e) {
      return Left(AppFailure.unknownFailure('Failed to pick image: $e'));
    }
  }

  /// Upload image to Supabase storage
  static Future<Either<AppFailure, String>> uploadEventImage(XFile imageFile) async {
    try {
      // Generate unique filename
      final String fileName = 'event_${DateTime.now().millisecondsSinceEpoch}_${imageFile.name}';
      
      // Read image file as bytes
      final Uint8List imageBytes = await imageFile.readAsBytes();
      
      // Upload to Supabase storage
      await _supabase.storage
          .from(_eventImagesBucket)
          .uploadBinary(fileName, imageBytes);

      // Get public URL
      final String publicUrl = _supabase.storage
          .from(_eventImagesBucket)
          .getPublicUrl(fileName);

      return Right(publicUrl);
    } catch (e) {
      return Left(AppFailure.serverFailure('Failed to upload image: $e'));
    }
  }

  /// Upload image and return URL (combines pick and upload)
  static Future<Either<AppFailure, String>> pickAndUploadEventImage() async {
    try {
      // Pick image from gallery
      final imageResult = await pickImageFromGallery();
      return imageResult.fold(
        (failure) => Left(failure),
        (imageFile) async {
          // Upload to storage
          final uploadResult = await uploadEventImage(imageFile);
          return uploadResult;
        },
      );
    } catch (e) {
      return Left(AppFailure.unknownFailure('Failed to process image: $e'));
    }
  }

  /// Delete image from storage
  static Future<Either<AppFailure, void>> deleteEventImage(String imageUrl) async {
    try {
      // Extract filename from URL
      final uri = Uri.parse(imageUrl);
      final fileName = uri.pathSegments.last;

      await _supabase.storage
          .from(_eventImagesBucket)
          .remove([fileName]);

      return const Right(null);
    } catch (e) {
      return Left(AppFailure.serverFailure('Failed to delete image: $e'));
    }
  }
} 
