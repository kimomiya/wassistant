part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class GetSuggestions extends SearchEvent {
  const GetSuggestions({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [
        search,
      ];
}

class FindPlayers extends SearchEvent {
  const FindPlayers({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [
        search,
      ];
}

class FindClans extends SearchEvent {
  const FindClans({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [
        search,
      ];
}
