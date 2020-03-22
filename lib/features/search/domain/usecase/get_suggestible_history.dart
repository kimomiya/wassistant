import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/search_history.dart';
import '../repositories/search_repository.dart';

class GetSuggestibleHistory
    implements UseCase<SearchHistory, GetSuggestibleHistoryParams> {
  GetSuggestibleHistory(this._repository);

  final SearchRepository _repository;

  @override
  Future<Either<Failure, SearchHistory>> call(
      GetSuggestibleHistoryParams params) async {
    return _repository.getSuggestibleHistory(params.search);
  }
}

class GetSuggestibleHistoryParams extends Equatable {
  const GetSuggestibleHistoryParams({@required this.search});

  final String search;

  @override
  List<Object> get props => [search];
}
