import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fimber/fimber.dart';
import 'package:meta/meta.dart';

import '../../../../core/constants/error_code.dart';
import '../../../../core/constants/error_message.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/player.dart';
import '../../domain/usecase/get_search_history.dart';
import '../../domain/usecase/search_players.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({
    @required GetSearchHistory history,
    @required SearchPlayers players,
  })  : assert(history != null),
        assert(players != null),
        getSearchHistory = history,
        searchPlayers = players;

  GetSearchHistory getSearchHistory;
  SearchPlayers searchPlayers;

  @override
  SearchState get initialState => Empty();

  //* Event mapping

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    if (event is GetHistory) {
      yield* _handleGetHistory();
    }

    if (event is FindPlayers) {
      yield* _handleFindPlayers(event);
    }
  }

  //* Evnet handler

  Stream<SearchState> _handleGetHistory() async* {
    final failureOrHistory = await getSearchHistory(NoParams());
    yield failureOrHistory.fold(
      (_) => const FoundHistory(history: []),
      (history) => FoundHistory(history: history),
    );
  }

  Stream<SearchState> _handleFindPlayers(FindPlayers event) async* {
    yield SearchingPlayers();

    final failureOrPlayers = await searchPlayers(
      SearchPlayersParams(search: event.search),
    );

    yield failureOrPlayers.fold(
      (failure) => Error(message: _mapFailureToMessage(failure)),
      (players) => FoundPlayers(players: players),
    );
  }

  //* Helper methods

  String _mapFailureToMessage(Failure failure) {
    Fimber.e('Search bolc', ex: failure);

    switch (failure.runtimeType) {
      case ServerFailure:
        if (failure.code == ErrorCode.networkUnreachable) {
          return ErrorMessage.networkUnreachable;
        }
        if (failure.code == ErrorCode.noContent) {
          return ErrorMessage.noSearchResults;
        }

        return ErrorMessage.fatalError;

      default:
        return ErrorMessage.fatalError;
    }
  }
}
