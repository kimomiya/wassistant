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
  const SearchSuggestionsLoadSuccess({@required this.suggestions});

  final SearchHistory suggestions;

  @override
  List<Object> get props => [suggestions];
}

class SearchSuggestionsLoadFailure extends SearchState {
  const SearchSuggestionsLoadFailure();

  @override
  List<Object> get props => [];
}

class SearchHistoryCacheSuccess extends SearchState {
  const SearchHistoryCacheSuccess();

  @override
  List<Object> get props => [];
}

class SearchHistoryCacheFailure extends SearchState {
  const SearchHistoryCacheFailure();

  @override
  List<Object> get props => [];
}

class SearchPlayersFindInProgress extends SearchState {
  const SearchPlayersFindInProgress();

  @override
  List<Object> get props => [];
}

class SearchPlayersFindSuccess extends SearchState {
  const SearchPlayersFindSuccess({@required this.players});

  final List<Player> players;

  @override
  List<Object> get props => [players];
}

class SearchPlayersFindFailure extends SearchState {
  const SearchPlayersFindFailure({@required this.message});

  final String message;

  @override
  List<Object> get props => [message];
}

class SearchClansFindInProgress extends SearchState {
  const SearchClansFindInProgress();

  @override
  List<Object> get props => [];
}

class SearchClansFindSuccess extends SearchState {
  const SearchClansFindSuccess({@required this.clans});

  final List<Clan> clans;

  @override
  List<Object> get props => [clans];
}

class SearchClansFindFailure extends SearchState {
  const SearchClansFindFailure({@required this.message});

  final String message;

  @override
  List<Object> get props => [message];
}
