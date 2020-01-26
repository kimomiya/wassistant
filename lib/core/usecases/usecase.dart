import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failures.dart';

abstract class UseCase<Success, Parameters> {
  Future<Either<Failure, Success>> call(Parameters parameters);
}

class NoParameters extends Equatable {
  @override
  List<Object> get props => [];
}
