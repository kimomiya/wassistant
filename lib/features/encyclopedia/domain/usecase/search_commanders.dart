import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/commander.dart';
import 'package:wassistant/features/encyclopedia/domain/repositories/pedia_repository.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';

class SearchCommanders
    implements UseCase<List<PediaCommander>, SearchCommandersParams> {
  SearchCommanders(this._repository);

  final PediaRepository _repository;

  @override
  Future<Either<Failure, List<PediaCommander>>> call(
    SearchCommandersParams searchCommandersParams,
  ) async {
    return await _repository.searchCommanders(searchCommandersParams.search);
  }
}

class SearchCommandersParams extends Equatable {
  const SearchCommandersParams({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [search];
}
