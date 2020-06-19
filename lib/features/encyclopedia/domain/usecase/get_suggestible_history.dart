import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/pedia_history.dart';
import 'package:wassistant/features/encyclopedia/domain/repositories/pedia_repository.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';

class GetSuggestiblePediaHistory
    implements UseCase<SearchPediaHistory, GetSuggestiblePediaHistoryParams> {
  GetSuggestiblePediaHistory(this._repository);

  final PediaRepository _repository;

  @override
  Future<Either<Failure, SearchPediaHistory>> call(
      GetSuggestiblePediaHistoryParams params) async {
    return _repository.getSuggestiblePediaHistory(params.search);
  }
}

class GetSuggestiblePediaHistoryParams extends Equatable {
  const GetSuggestiblePediaHistoryParams({@required this.search});

  final String search;

  @override
  List<Object> get props => [search];
}
