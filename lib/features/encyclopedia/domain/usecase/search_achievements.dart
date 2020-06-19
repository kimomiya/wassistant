import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/achievement.dart';
import 'package:wassistant/features/encyclopedia/domain/repositories/pedia_repository.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';

class SearchAchievements
    implements UseCase<List<PediaAchievement>, SearchAchievementsParams> {
  SearchAchievements(this._repository);

  final PediaRepository _repository;

  @override
  Future<Either<Failure, List<PediaAchievement>>> call(
    SearchAchievementsParams searchAchievementsParams,
  ) async {
    return await _repository
        .searchAchievements(searchAchievementsParams.search);
  }
}

class SearchAchievementsParams extends Equatable {
  const SearchAchievementsParams({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [search];
}
