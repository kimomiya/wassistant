import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure(this.properties);

  final List properties;

  @override
  List get props => <dynamic>[properties];
}

class ServerFailure extends Failure {
  const ServerFailure([List properties = const <dynamic>[]])
      : super(properties);
}

class CacheFailure extends Failure {
  const CacheFailure([List properties = const <dynamic>[]]) : super(properties);
}
