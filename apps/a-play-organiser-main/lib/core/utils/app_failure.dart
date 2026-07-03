import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failure.freezed.dart';

@freezed
class AppFailure with _$AppFailure {
  const factory AppFailure.serverFailure(String message) = _ServerFailure;
  const factory AppFailure.networkFailure(String message) = _NetworkFailure;
  const factory AppFailure.authFailure(String message) = _AuthFailure;
  const factory AppFailure.unknownFailure(String message) = _UnknownFailure;
} 