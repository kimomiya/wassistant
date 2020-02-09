part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class Empty extends SearchState {}

class FoundHistory extends SearchState {
  const FoundHistory({@required this.history});

  final List<String> history;

  @override
  List<Object> get props => [history];
}

class SearchingPlayers extends SearchState {}

class FoundPlayers extends SearchState {
  const FoundPlayers({@required this.players});

  final List<Player> players;

  @override
  List<Object> get props => [players];
}

class SearchingClans extends SearchState {}

class FoundClans extends SearchState {}

class Error extends SearchState {
  const Error({@required this.message});

  final String message;

  @override
  List<Object> get props => [message];
}
