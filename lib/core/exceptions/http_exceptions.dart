import 'package:meta/meta.dart';

class ConnectivityException implements Exception {
  @override
  String toString() => 'Network is unreachable.';
}

class HttpRequestException implements Exception {
  HttpRequestException(this.message);

  final String message;

  @override
  String toString() => '$message';
}

class ResultCodeException implements Exception {
  ResultCodeException({@required this.code, @required this.message});

  final int code;
  final String message;

  @override
  String toString() => '$code: $message';
}
