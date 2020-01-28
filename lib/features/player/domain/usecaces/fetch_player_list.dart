import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/player.dart';
import '../repositories/player_repository.dart';

class FetchPlayerList implements UseCase<List<Player>, Parameters> {
  FetchPlayerList(this._repository);

  final PlayerRepository _repository;

  @override
  Future<Either<Failure, List<Player>>> call(Parameters parameters) async {
    return await _repository.fetchPlayerList(parameters.search);
  }
}

class Parameters extends Equatable {
  const Parameters(this.search);

  final String search;

  @override
  List<Object> get props => [search];
}
