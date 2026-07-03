/// Error codes for user-facing error messages
/// Each error has a unique code and a user-friendly message
class ErrorCodes {
  // Auth Errors (100-199)
  static const String authInvalidCredentials = 'ERROR-100';
  static const String authEmailExists = 'ERROR-101';
  static const String authWeakPassword = 'ERROR-102';
  static const String authInvalidEmail = 'ERROR-103';
  static const String authTooManyAttempts = 'ERROR-104';
  static const String authEmailNotVerified = 'ERROR-105';
  static const String authSessionExpired = 'ERROR-106';
  static const String authUnauthorized = 'ERROR-107';

  // Network Errors (200-299)
  static const String networkNoConnection = 'ERROR-200';
  static const String networkTimeout = 'ERROR-201';
  static const String networkUnreachable = 'ERROR-202';

  // Server Errors (300-399)
  static const String serverError = 'ERROR-300';
  static const String serverUnavailable = 'ERROR-301';
  static const String serverBadRequest = 'ERROR-302';
  static const String serverNotFound = 'ERROR-303';
  static const String serverForbidden = 'ERROR-304';
  static const String serverConflict = 'ERROR-305';
  static const String serverUnprocessable = 'ERROR-306';
  static const String serverConfiguration = 'ERROR-307';

  // Database Errors (400-499)
  static const String databaseError = 'ERROR-400';
  static const String databaseDuplicate = 'ERROR-401';
  static const String databaseNotFound = 'ERROR-402';
  static const String databasePermission = 'ERROR-403';
  static const String databaseForeignKey = 'ERROR-404';

  // Data Errors (500-599)
  static const String dataNotFound = 'ERROR-500';
  static const String dataInvalid = 'ERROR-501';
  static const String dataProcessing = 'ERROR-502';

  // Unknown/Generic (900-999)
  static const String unknown = 'ERROR-900';

  /// Get user-friendly message for an error code
  static String getMessage(String errorCode) {
    switch (errorCode) {
      // Auth
      case authInvalidCredentials:
        return 'Invalid email or password. Please try again.';
      case authEmailExists:
        return 'This email is already registered. Please sign in instead.';
      case authWeakPassword:
        return 'Password must be at least 6 characters long.';
      case authInvalidEmail:
        return 'Please enter a valid email address.';
      case authTooManyAttempts:
        return 'Too many attempts. Please try again later.';
      case authEmailNotVerified:
        return 'Please verify your email before signing in.';
      case authSessionExpired:
        return 'Your session has expired. Please sign in again.';
      case authUnauthorized:
        return 'You are not authorized. Please sign in again.';

      // Network
      case networkNoConnection:
        return 'No internet connection. Please check your network.';
      case networkTimeout:
        return 'Request timed out. Please try again.';
      case networkUnreachable:
        return 'Network is unreachable. Please check your connection.';

      // Server
      case serverError:
        return 'Server error. Please try again later.';
      case serverUnavailable:
        return 'Service temporarily unavailable. Please try again later.';
      case serverBadRequest:
        return 'Invalid request. Please check your information.';
      case serverNotFound:
        return 'Resource not found. Please try again.';
      case serverForbidden:
        return 'Access forbidden. You do not have permission.';
      case serverConflict:
        return 'This information already exists.';
      case serverUnprocessable:
        return 'Unable to process your request.';
      case serverConfiguration:
        return 'Server configuration error. Please contact support.';

      // Database
      case databaseError:
        return 'Database error occurred. Please try again.';
      case databaseDuplicate:
        return 'This information already exists.';
      case databaseNotFound:
        return 'Information not found.';
      case databasePermission:
        return 'You do not have permission for this action.';
      case databaseForeignKey:
        return 'Related information not found.';

      // Data
      case dataNotFound:
        return 'Data not found. Please try again.';
      case dataInvalid:
        return 'Invalid data. Please check your information.';
      case dataProcessing:
        return 'Error processing data. Please try again.';

      // Unknown
      case unknown:
      default:
        return 'Something went wrong. Please try again.';
    }
  }

  /// Format error message with code
  static String formatError(String errorCode, {String? details}) {
    final message = getMessage(errorCode);
    // Return only the user-friendly message without the error code
    return message;
  }
}
