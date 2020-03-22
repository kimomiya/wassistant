import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fimber/fimber.dart';
import 'package:meta/meta.dart';

import '../../../../core/constants/error_message.dart';
import '../../../../core/constants/status_code.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/clan.dart';
import '../../domain/entities/player.dart';
import '../../domain/entities/search_history.dart';
import '../../domain/usecase/cache_search_history.dart';
import '../../domain/usecase/get_suggestible_history.dart';
import '../../domain/usecase/search_clans.dart';
import '../../domain/usecase/search_players.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({
    @required GetSuggestibleHistory suggestions,
    @required CacheSearchHistory history,
    @required SearchPlayers players,
    @required SearchClans clans,
  })  : assert(suggestions != null),
        assert(history != null),
        assert(players != null),
        assert(clans != null),
        getSuggestibleHistory = suggestions,
        cacheSearchHistory = history,
        searchPlayers = players,
        searchClans = clans;

  GetSuggestibleHistory getSuggestibleHistory;
  CacheSearchHistory cacheSearchHistory;
  SearchPlayers searchPlayers;
  SearchClans searchClans;

  @override
  SearchState get initialState => const SearchInitial();

  //* Event mapping

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    if (event is SearchSuggestionsLoaded) {
      yield* _handleSearchSuggestionsLoaded(event);
    }

    if (event is SearchHistoryCached) {
      yield* _handleSearchHisotyCached(event);
    }

    if (event is SearchPlayersFound) {
      yield* _handleSearchPlayersFound(event);
    }

    if (event is SearchClansFound) {
      yield* _handleSearchClansFound(event);
    }
  }

  //* Evnet handler

  Stream<SearchState> _handleSearchSuggestionsLoaded(
    SearchSuggestionsLoaded event,
  ) async* {
    final failureOrSuggestions = await getSuggestibleHistory(
      GetSuggestibleHistoryParams(search: event.search),
    );
    yield failureOrSuggestions.fold(
      (failure) => const SearchSuggestionsLoadFailure(),
      (suggestions) => SearchSuggestionsLoadSuccess(suggestions: suggestions),
    );
  }

  Stream<SearchState> _handleSearchHisotyCached(
    SearchHistoryCached event,
  ) async* {
    final failureOrVoid = await cacheSearchHistory(
      CacheSearchHistoryParams(search: event.search),
    );
    yield failureOrVoid.fold(
      (failure) => const SearchHistoryCacheFailure(),
      (_) => const SearchHistoryCacheSuccess(),
    );
  }

  Stream<SearchState> _handleSearchPlayersFound(
    SearchPlayersFound event,
  ) async* {
    yield const SearchPlayersFindInProgress();

    final failureOrPlayers = await searchPlayers(
      SearchPlayersParams(search: event.search),
    );

    yield failureOrPlayers.fold(
      (failure) => SearchPlayersFindFailure(
        message: _mapFailureToMessage(failure),
      ),
      (players) => SearchPlayersFindSuccess(players: players),
    );
  }

  Stream<SearchState> _handleSearchClansFound(
    SearchClansFound event,
  ) async* {
    yield const SearchClansFindInProgress();

    final failureOrClans = await searchClans(
      SearchClansParams(search: event.search),
    );

    yield failureOrClans.fold(
      (failure) => SearchClansFindFailure(
        message: _mapFailureToMessage(failure),
      ),
      (clans) => SearchClansFindSuccess(clans: clans),
    );
  }

  //* Helper methods

  String _mapFailureToMessage(Failure failure) {
    Fimber.e('Search bolc', ex: failure);

    switch (failure.runtimeType) {
      case ServerFailure:
        if (failure.code == StatusCode.networkUnreachable) {
          return ErrorMessage.networkUnreachable;
        }

        if (failure.code == StatusCode.invalidSearch) {
          return ErrorMessage.invalidSearch;
        }

        if (failure.code == StatusCode.noContent) {
          return ErrorMessage.noSearchResults;
        }

        return ErrorMessage.fatalError;

      default:
        return ErrorMessage.fatalError;
    }
  }
}
