part of 'pedia_bloc.dart';

abstract class PediaEvent extends Equatable {
  const PediaEvent();
}

class SearchPediaSuggestionsLoaded extends PediaEvent {
  const SearchPediaSuggestionsLoaded({@required this.search});

  final String search;

  @override
  List<Object> get props => [search];
}

class SearchPediaHistoryCached extends PediaEvent {
  const SearchPediaHistoryCached({@required this.search});

  final String search;

  @override
  List<Object> get props => [search];
}

class SearchPediaAchievementsFound extends PediaEvent {
  const SearchPediaAchievementsFound({@required this.search});

  final String search;

  @override
  List<Object> get props => [search];
}

class SearchPediaCommandersFound extends PediaEvent {
  const SearchPediaCommandersFound({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [search];
}

class SearchPediaCommanderSkillsFound extends PediaEvent {
  const SearchPediaCommanderSkillsFound({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [search];
}

class SearchPediaCommanderRanksFound extends PediaEvent {
  const SearchPediaCommanderRanksFound({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [search];
}

class SearchPediaModulesFound extends PediaEvent {
  const SearchPediaModulesFound({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [search];
}

class SearchPediaShipsFound extends PediaEvent {
  const SearchPediaShipsFound({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [search];
}

class SearchPediaShipParamsFound extends PediaEvent {
  const SearchPediaShipParamsFound({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [search];
}

class SearchPediaInfoFound extends PediaEvent {
  const SearchPediaInfoFound({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [search];
}
