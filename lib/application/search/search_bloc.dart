import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/search/entities/clan.dart';
import '../../domain/search/entities/player.dart';
import '../../domain/search/repositories/search_repository.dart';
import '../../domain/search/search_failure.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(this._repository);

  final SearchRepository _repository;

  @override
  SearchState get initialState => const SearchState.initial();

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    yield* event.map(
      searchWordChanged: _handleSearchWordChanged,
      playersSearched: _handlePlayersSearched,
      clansSearched: _handleClansSearched,
    );
  }

  //* Evnet handler

  Stream<SearchState> _handleSearchWordChanged(
    SearchWordChanged event,
  ) async* {
    final failureOrHistory = await _repository.getSuggestibleHistory(
      event.search,
    );
    yield failureOrHistory.fold(
      (_) => SearchState.getSuggestibleHistorySuccess(KtList.empty()),
      (history) => SearchState.getSuggestibleHistorySuccess(history),
    );
  }

  Stream<SearchState> _handlePlayersSearched(
    PlayersSearched event,
  ) async* {
    yield const SearchState.searchPlayersInProgress();

    final failureOrPlayers = await _repository.searchPlayers(
      event.search,
    );
    yield failureOrPlayers.fold(
      (failure) => SearchState.searchPlayersFailure(failure),
      (players) => SearchState.searchPlayersSuccess(players),
    );
  }

  Stream<SearchState> _handleClansSearched(
    ClansSearched event,
  ) async* {
    yield const SearchState.searchClansInProgress();

    final failureOrHistory = await _repository.searchClans(
      event.search,
    );
    yield failureOrHistory.fold(
      (failure) => SearchState.searchClansFailure(failure),
      (clans) => SearchState.searchClansSuccess(clans),
    );
  }
}
