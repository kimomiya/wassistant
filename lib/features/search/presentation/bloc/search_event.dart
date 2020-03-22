part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();
}

class SearchSuggestionsLoaded extends SearchEvent {
  const SearchSuggestionsLoaded({@required this.search});

  final String search;

  @override
  List<Object> get props => [search];
}

class SearchHistoryCached extends SearchEvent {
  const SearchHistoryCached({@required this.search});

  final String search;

  @override
  List<Object> get props => [search];
}

class SearchPlayersFound extends SearchEvent {
  const SearchPlayersFound({@required this.search});

  final String search;

  @override
  List<Object> get props => [search];
}

class SearchClansFound extends SearchEvent {
  const SearchClansFound({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [search];
}
