sealed class AppException implements Exception {
  AppException(this.code, this.message);

  final String code;
  final String message;
}
