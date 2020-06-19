import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/commander_skill.dart';
import '../repositories/pedia_repository.dart';

class SearchCommanderSkills
    implements UseCase<List<PediaCommanderSkill>, SearchCommanderSkillsParams> {
  SearchCommanderSkills(this._repository);

  final PediaRepository _repository;

  @override
  Future<Either<Failure, List<PediaCommanderSkill>>> call(
    SearchCommanderSkillsParams searchCommanderSkillsParams,
  ) async {
    return await _repository
        .searchCommanderSkills(searchCommanderSkillsParams.search);
  }
}

class SearchCommanderSkillsParams extends Equatable {
  const SearchCommanderSkillsParams({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [search];
}
