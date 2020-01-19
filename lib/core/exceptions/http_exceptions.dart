class ConnectivityException implements Exception {
  @override
  String toString() => 'Network is unreachable.';
}

class HttpRequestException implements Exception {
  HttpRequestException(this.message);

  final String message;

  @override
  String toString() => '$message.';
}
