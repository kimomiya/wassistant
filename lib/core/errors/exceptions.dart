import 'package:meta/meta.dart';

class ServerException implements Exception {
  ServerException({
    @required this.code,
    @required this.message,
  });

  final int code;
  final String message;

  @override
  String toString() => '$code: $message';
}

class CacheException implements Exception {
  CacheException({
    @required this.code,
    @required this.message,
  });

  final int code;
  final String message;

  @override
  String toString() => '$code: $message';
}
