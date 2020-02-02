import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/states/view_state.dart';
import '../../domain/entities/player.dart';
import '../../domain/usecase/fetch_player_list.dart';

class SearchState extends ViewState {
  SearchState({
    @required this.fetchPlayerList,
  });

  final FetchPlayerList fetchPlayerList;

  //* States
  List<Player> _players;

  //* States getters
  List<Player> get players => _players;

  //* Events
  Future<void> searchPlayers(String search) async {
    setBusy(true);

    final result = await fetchPlayerList(
      FetchPlayerListParams(search: search),
    );

    setBusy(false);

    result.fold(
      (failure) => setErrorMessage(_mapFailureToMessage(failure)),
      (players) => _players = players,
    );

    notifyListeners();
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'ErrorMessage.authenticationFailed';

      default:
        return 'ErrorMessage.unexpectedError';
    }
  }
}
