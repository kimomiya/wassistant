import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/clan.dart';
import '../repositories/search_repository.dart';

class SearchClans implements UseCase<List<Clan>, SearchClansParams> {
  SearchClans(this._repository);

  final SearchRepository _repository;

  @override
  Future<Either<Failure, List<Clan>>> call(
    SearchClansParams searchClansParams,
  ) async {
    return await _repository.searchClans(searchClansParams.search);
  }
}

class SearchClansParams extends Equatable {
  const SearchClansParams({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [search];
}
