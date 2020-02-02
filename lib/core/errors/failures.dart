import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class Failure extends Equatable {
  const Failure({
    @required this.code,
    @required this.message,
  });

  final int code;
  final String message;

  @override
  String toString() => '$code: $message';

  @override
  List<Object> get props => [
        code,
        message,
      ];
}

class ServerFailure extends Failure {
  const ServerFailure({
    @required int code,
    @required String message,
  }) : super(code: code, message: message);
}

class CacheFailure extends Failure {
  const CacheFailure({
    @required int code,
    @required String message,
  }) : super(code: code, message: message);
}
