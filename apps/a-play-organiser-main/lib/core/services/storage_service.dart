import 'package:fpdart/fpdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/app_failure.dart';

/// All vendor (organiser) uploads go through the single shared 'media'
/// bucket, labeled by folder so RLS can validate ownership from the uid
/// embedded in the path (see supabase/migrations/20260706_create_media_bucket.sql
/// in the user app repo): flyers/{uid}/..., clubs/{uid}/..., venues/{uid}/...
class StorageService {
  static final _supabase = Supabase.instance.client;
  static const String _mediaBucket = 'media';

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

  /// Upload a file into the media bucket under `{label}/{uid}/{filename}`.
  /// `label` identifies what the media is for (flyers, clubs, venues, ...)
  /// so the same bucket can serve multiple features while staying easy to
  /// audit and while RLS can still validate the uid segment of the path.
  static Future<Either<AppFailure, String>> _uploadLabeled({
    required String label,
    required XFile imageFile,
  }) async {
    try {
      final userId = _supabase.auth.currentUser?.id;
      if (userId == null) {
        return Left(AppFailure.authFailure('You must be logged in to upload media'));
      }

      final fileName = '${DateTime.now().millisecondsSinceEpoch}_${imageFile.name}';
      final path = '$label/$userId/$fileName';
      final imageBytes = await imageFile.readAsBytes();

      await _supabase.storage.from(_mediaBucket).uploadBinary(path, imageBytes);
      final publicUrl = _supabase.storage.from(_mediaBucket).getPublicUrl(path);

      return Right(publicUrl);
    } catch (e) {
      return Left(AppFailure.serverFailure('Failed to upload image: $e'));
    }
  }

  /// Upload an event flyer/cover image
  static Future<Either<AppFailure, String>> uploadEventImage(XFile imageFile) {
    return _uploadLabeled(label: 'flyers', imageFile: imageFile);
  }

  /// Upload a venue/club cover image
  static Future<Either<AppFailure, String>> uploadVenueImage(XFile imageFile) {
    return _uploadLabeled(label: 'clubs', imageFile: imageFile);
  }

  /// Pick and upload a venue image (combines pick and upload)
  static Future<Either<AppFailure, String>> pickAndUploadVenueImage() async {
    try {
      final imageResult = await pickImageFromGallery();
      return imageResult.fold(
        (failure) => Left(failure),
        (imageFile) => uploadVenueImage(imageFile),
      );
    } catch (e) {
      return Left(AppFailure.unknownFailure('Failed to process image: $e'));
    }
  }

  /// Pick and upload an event flyer/cover image (combines pick and upload)
  static Future<Either<AppFailure, String>> pickAndUploadEventImage() async {
    try {
      final imageResult = await pickImageFromGallery();
      return imageResult.fold(
        (failure) => Left(failure),
        (imageFile) => uploadEventImage(imageFile),
      );
    } catch (e) {
      return Left(AppFailure.unknownFailure('Failed to process image: $e'));
    }
  }

  /// Delete an uploaded image given its public URL
  static Future<Either<AppFailure, void>> deleteEventImage(String imageUrl) async {
    try {
      final uri = Uri.parse(imageUrl);
      final marker = '/object/public/$_mediaBucket/';
      final markerIndex = uri.path.indexOf(marker);
      if (markerIndex == -1) {
        return Left(AppFailure.unknownFailure('Not a recognized media URL'));
      }
      final path = uri.path.substring(markerIndex + marker.length);

      await _supabase.storage.from(_mediaBucket).remove([path]);

      return const Right(null);
    } catch (e) {
      return Left(AppFailure.serverFailure('Failed to delete image: $e'));
    }
  }
}
