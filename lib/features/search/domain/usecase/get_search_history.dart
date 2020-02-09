import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/search_repository.dart';

class GetSearchHistory implements UseCase<List<String>, NoParams> {
  GetSearchHistory(this._repository);

  final SearchRepository _repository;

  @override
  Future<Either<Failure, List<String>>> call(NoParams params) async {
    return _repository.getSearchHistory();
  }
}
