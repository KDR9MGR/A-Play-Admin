import 'package:supabase_flutter/supabase_flutter.dart';
import 'error_codes.dart';

/// Utility class to map technical Supabase errors to user-friendly messages with error codes
class ErrorMessageMapper {
  /// Converts any error to a user-friendly message with error code
  static String getUserFriendlyMessage(dynamic error) {
    // Handle null or empty errors
    if (error == null) {
      return ErrorCodes.formatError(ErrorCodes.unknown);
    }

    if (error is String) {
      final trimmed = error.trim();
      if (trimmed.isEmpty) {
        return ErrorCodes.formatError(ErrorCodes.unknown);
      }
      return trimmed;
    }

    final errorString = error.toString().toLowerCase();

    // Handle Supabase AuthException
    if (error is AuthException) {
      return _getAuthErrorMessage(error);
    }

    // Handle Supabase PostgrestException
    if (error is PostgrestException) {
      return _getPostgrestErrorMessage(error);
    }

    // Handle network/socket errors
    if (errorString.contains('socketexception') ||
        errorString.contains('failed host lookup') ||
        errorString.contains('network is unreachable')) {
      return ErrorCodes.formatError(ErrorCodes.networkNoConnection);
    }

    // Handle timeout errors
    if (errorString.contains('timeout')) {
      return ErrorCodes.formatError(ErrorCodes.networkTimeout);
    }

    // Handle "user already exists" (check in string)
    if (errorString.contains('user already registered') ||
        errorString.contains('user_already_exists') ||
        errorString.contains('email already registered')) {
      return ErrorCodes.formatError(ErrorCodes.authEmailExists);
    }

    // Handle invalid credentials
    if (errorString.contains('invalid login credentials') ||
        errorString.contains('invalid_credentials')) {
      return ErrorCodes.formatError(ErrorCodes.authInvalidCredentials);
    }

    // Handle weak password
    if (errorString.contains('password') &&
        (errorString.contains('weak') ||
            errorString.contains('short') ||
            errorString.contains('at least'))) {
      return ErrorCodes.formatError(ErrorCodes.authWeakPassword);
    }

    // Handle email verification
    if (errorString.contains('email not confirmed') ||
        errorString.contains('email_not_confirmed')) {
      return ErrorCodes.formatError(ErrorCodes.authEmailNotVerified);
    }

    // Handle invalid email format
    if (errorString.contains('invalid email') ||
        errorString.contains('email_invalid')) {
      return ErrorCodes.formatError(ErrorCodes.authInvalidEmail);
    }

    // Default fallback
    return ErrorCodes.formatError(ErrorCodes.unknown);
  }

  /// Handles AuthException specific errors
  static String _getAuthErrorMessage(AuthException error) {
    final message = error.message.toLowerCase();
    final statusCode = error.statusCode;

    // Check for specific error codes first - enhanced duplicate email detection
    if (message.contains('user already registered') ||
        message.contains('user_already_exists') ||
        message.contains('email already registered') ||
        message.contains('already been registered') ||
        message.contains('already registered') ||
        message.contains('duplicate')) {
      return ErrorCodes.formatError(ErrorCodes.authEmailExists);
    }

    if (message.contains('invalid login credentials') ||
        message.contains('invalid_credentials')) {
      return ErrorCodes.formatError(ErrorCodes.authInvalidCredentials);
    }

    if (message.contains('email not confirmed')) {
      return ErrorCodes.formatError(ErrorCodes.authEmailNotVerified);
    }

    if (message.contains('password') &&
        (message.contains('weak') || message.contains('short') || message.contains('at least'))) {
      return ErrorCodes.formatError(ErrorCodes.authWeakPassword);
    }

    if (message.contains('invalid email') || message.contains('badly formatted')) {
      return ErrorCodes.formatError(ErrorCodes.authInvalidEmail);
    }

    if (message.contains('signups not allowed') ||
        message.contains('signup is disabled') ||
        message.contains('signups are disabled')) {
      return 'Sign up is currently unavailable. Please contact support.';
    }

    if (message.contains('captcha') || message.contains('turnstile')) {
      return 'Sign up failed verification. Please try again.';
    }

    // Handle by status code
    switch (statusCode) {
      case '400':
        if (message.isNotEmpty && message != 'invalid request') {
          return error.message.trim();
        }
        return ErrorCodes.formatError(ErrorCodes.serverBadRequest);
      case '401':
        return ErrorCodes.formatError(ErrorCodes.authInvalidCredentials);
      case '422':
        if (message.contains('email') || message.contains('user') || message.contains('registered')) {
          return ErrorCodes.formatError(ErrorCodes.authEmailExists);
        }
        return ErrorCodes.formatError(ErrorCodes.serverUnprocessable);
      case '429':
        return ErrorCodes.formatError(ErrorCodes.authTooManyAttempts);
      default:
        return ErrorCodes.formatError(ErrorCodes.authInvalidCredentials);
    }
  }

  /// Handles PostgrestException specific errors
  static String _getPostgrestErrorMessage(PostgrestException error) {
    final message = error.message.toLowerCase();
    final code = error.code;
    final details = error.details?.toString().toLowerCase() ?? '';

    if (message.contains('row-level security') ||
        message.contains('rls') ||
        details.contains('row-level security')) {
      return ErrorCodes.formatError(ErrorCodes.databasePermission);
    }

    if (message.contains('invalid input value for enum') ||
        details.contains('invalid input value for enum')) {
      return ErrorCodes.formatError(ErrorCodes.dataInvalid);
    }

    if (message.contains('null value in column') || details.contains('null value in column')) {
      return ErrorCodes.formatError(ErrorCodes.dataInvalid);
    }

    // Check for constraint violations
    if (message.contains('unique') ||
        message.contains('duplicate') ||
        code == '23505') {
      return ErrorCodes.formatError(ErrorCodes.databaseDuplicate);
    }

    // Foreign key violations
    if (message.contains('foreign key') || code == '23503') {
      return ErrorCodes.formatError(ErrorCodes.databaseForeignKey);
    }

    // Not found
    if (code == 'PGRST116' || message.contains('not found')) {
      return ErrorCodes.formatError(ErrorCodes.databaseNotFound);
    }

    // Permission denied
    if (message.contains('permission') ||
        message.contains('denied') ||
        code == '42501') {
      return ErrorCodes.formatError(ErrorCodes.databasePermission);
    }

    // Column does not exist (configuration errors)
    if (code == '42703' ||
        (message.contains('column') &&
            (message.contains('does not exist') ||
                message.contains('could not find') ||
                message.contains('unknown column')))) {
      return ErrorCodes.formatError(ErrorCodes.serverConfiguration);
    }

    // HTTP Status Code specific handling
    if (code == '400' || details.contains('bad request')) {
      if (message.isNotEmpty && message != 'bad request') {
        return error.message.trim();
      }
      return ErrorCodes.formatError(ErrorCodes.serverBadRequest);
    }

    if (code == '401' || details.contains('unauthorized')) {
      return ErrorCodes.formatError(ErrorCodes.authUnauthorized);
    }

    if (code == '403' || details.contains('forbidden')) {
      return ErrorCodes.formatError(ErrorCodes.serverForbidden);
    }

    if (code == '404' || details.contains('not found')) {
      return ErrorCodes.formatError(ErrorCodes.serverNotFound);
    }

    if (code == '409' || details.contains('conflict')) {
      return ErrorCodes.formatError(ErrorCodes.serverConflict);
    }

    if (code == '422' || details.contains('unprocessable')) {
      return ErrorCodes.formatError(ErrorCodes.serverUnprocessable);
    }

    if (code == '429' || details.contains('too many')) {
      return ErrorCodes.formatError(ErrorCodes.authTooManyAttempts);
    }

    if (code == '500' || details.contains('internal server')) {
      return ErrorCodes.formatError(ErrorCodes.serverError);
    }

    if (code == '503' || details.contains('service unavailable')) {
      return ErrorCodes.formatError(ErrorCodes.serverUnavailable);
    }

    return ErrorCodes.formatError(ErrorCodes.databaseError);
  }

  /// Extract clean error message from AppFailure or raw error
  static String extractMessage(String rawMessage) {
    // If already a clean message, return it
    if (!rawMessage.contains('Exception') &&
        !rawMessage.contains('AppFailure')) {
      return rawMessage;
    }

    // Try to extract message from AppFailure pattern
    // Pattern: AppFailure.authFailure(message: ...)
    final failurePattern = RegExp(r'message:\s*(.+?)(?:\)|,\s*statusCode)');
    final failureMatch = failurePattern.firstMatch(rawMessage);
    if (failureMatch != null) {
      final extractedMessage = failureMatch.group(1)?.trim() ?? '';
      // Recursively clean if it's still an exception
      if (extractedMessage.contains('Exception')) {
        return getUserFriendlyMessage(extractedMessage);
      }
      return extractedMessage;
    }

    // Try to extract from exception pattern
    // Pattern: SomeException(message: ...)
    final exceptionPattern = RegExp(r'Exception\(message:\s*(.+?)\)');
    final exceptionMatch = exceptionPattern.firstMatch(rawMessage);
    if (exceptionMatch != null) {
      return exceptionMatch.group(1)?.trim() ?? rawMessage;
    }

    // Fallback to getting user friendly message
    return getUserFriendlyMessage(rawMessage);
  }
}
