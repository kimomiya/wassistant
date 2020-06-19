import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/commander_rank.dart';
import '../repositories/pedia_repository.dart';

class SearchCommanderRanks
    implements UseCase<List<PediaCommanderRank>, SearchCommanderRanksParams> {
  SearchCommanderRanks(this._repository);

  final PediaRepository _repository;

  @override
  Future<Either<Failure, List<PediaCommanderRank>>> call(
    SearchCommanderRanksParams searchCommanderRanksParams,
  ) async {
    return await _repository
        .searchCommanderRanks(searchCommanderRanksParams.search);
  }
}

class SearchCommanderRanksParams extends Equatable {
  const SearchCommanderRanksParams({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [search];
}
