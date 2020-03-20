part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();
}

class SearchSuggestionsLoaded extends SearchEvent {
  const SearchSuggestionsLoaded({
    @required this.search,
    @required this.lastExecuteTime,
  });

  final String search;
  final DateTime lastExecuteTime;

  @override
  List<Object> get props => [search, lastExecuteTime];
}

class SearchPlayersFound extends SearchEvent {
  const SearchPlayersFound({
    @required this.search,
    @required this.lastExecuteTime,
  });

  final String search;
  final DateTime lastExecuteTime;

  @override
  List<Object> get props => [search, lastExecuteTime];
}

class SearchClansFound extends SearchEvent {
  const SearchClansFound({
    @required this.search,
    @required this.lastExecuteTime,
  });

  final String search;
  final DateTime lastExecuteTime;

  @override
  List<Object> get props => [search, lastExecuteTime];
}
