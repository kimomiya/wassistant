part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();
}

class SearchInitial extends SearchState {
  const SearchInitial();

  @override
  List<Object> get props => [];
}

class SearchSuggestionsLoadSuccess extends SearchState {
  const SearchSuggestionsLoadSuccess({
    @required this.suggestions,
    @required this.lastExecuteTime,
  });

  final SearchHistory suggestions;
  final DateTime lastExecuteTime;

  @override
  List<Object> get props => [suggestions, lastExecuteTime];
}

class SearchSuggestionsLoadFailure extends SearchState {
  const SearchSuggestionsLoadFailure({
    @required this.lastExecuteTime,
  });

  final DateTime lastExecuteTime;

  @override
  List<Object> get props => [lastExecuteTime];
}

class SearchPlayersFindInProgress extends SearchState {
  const SearchPlayersFindInProgress();

  @override
  List<Object> get props => [];
}

class SearchPlayersFindSuccess extends SearchState {
  const SearchPlayersFindSuccess({
    @required this.players,
    @required this.lastExecuteTime,
  });

  final List<Player> players;
  final DateTime lastExecuteTime;

  @override
  List<Object> get props => [players];
}

class SearchPlayersFindFailure extends SearchState {
  const SearchPlayersFindFailure({
    @required this.message,
    @required this.lastExecuteTime,
  });

  final String message;
  final DateTime lastExecuteTime;

  @override
  List<Object> get props => [message];
}

class SearchClansFindInProgress extends SearchState {
  const SearchClansFindInProgress();

  @override
  List<Object> get props => [];
}

class SearchClansFindSuccess extends SearchState {
  const SearchClansFindSuccess({
    @required this.clans,
    @required this.lastExecuteTime,
  });

  final List<Clan> clans;
  final DateTime lastExecuteTime;

  @override
  List<Object> get props => [clans, lastExecuteTime];
}

class SearchClansFindFailure extends SearchState {
  const SearchClansFindFailure({
    @required this.message,
    @required this.lastExecuteTime,
  });

  final String message;
  final DateTime lastExecuteTime;

  @override
  List<Object> get props => [message, lastExecuteTime];
}
