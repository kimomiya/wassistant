import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/player_info.dart';
import '../repositories/player_repository.dart';

class FetchPlayerInfo extends UseCase<PlayerInfo, Parameters> {
  FetchPlayerInfo(this._repository);

  final PlayerRepository _repository;

  @override
  Future<Either<Failure, PlayerInfo>> call(Parameters parameters) async {
    return await _repository.fetchPlayerInfo(parameters.accountId);
  }
}

class Parameters extends Equatable {
  const Parameters(this.accountId);

  final int accountId;

  @override
  List<Object> get props => [accountId];
}
