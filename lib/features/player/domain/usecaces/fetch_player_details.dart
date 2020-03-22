import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/player_details.dart';
import '../repositories/player_repository.dart';

class FetchPlayerDetails extends UseCase<PlayerDetails, Parameters> {
  FetchPlayerDetails(this._repository);

  final PlayerRepository _repository;

  @override
  Future<Either<Failure, PlayerDetails>> call(Parameters parameters) async {
    return await _repository.fetchPlayerDetails(parameters.accountId);
  }
}

class Parameters extends Equatable {
  const Parameters(this.accountId);

  final int accountId;

  @override
  List<Object> get props => [accountId];
}
