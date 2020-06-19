import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fimber/fimber.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/core/constants/error_message.dart';
import 'package:wassistant/core/constants/status_code.dart';
import 'package:wassistant/core/errors/failures.dart';

import 'package:wassistant/features/encyclopedia/domain/entities/achievement.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/commander_rank.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/commander_skill.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/commander.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/info.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/module.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/pedia_history.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/ship_param.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/ship.dart';
import 'package:wassistant/features/encyclopedia/domain/usecase/cache_pedia_history.dart';
import 'package:wassistant/features/encyclopedia/domain/usecase/get_suggestible_history.dart';
import 'package:wassistant/features/encyclopedia/domain/usecase/search_achievements.dart';
import 'package:wassistant/features/encyclopedia/domain/usecase/search_commander_ranks.dart';
import 'package:wassistant/features/encyclopedia/domain/usecase/search_commander_skills.dart';
import 'package:wassistant/features/encyclopedia/domain/usecase/search_commanders.dart';
import 'package:wassistant/features/encyclopedia/domain/usecase/search_info.dart';
import 'package:wassistant/features/encyclopedia/domain/usecase/search_modules.dart';
import 'package:wassistant/features/encyclopedia/domain/usecase/search_ship_params.dart';
import 'package:wassistant/features/encyclopedia/domain/usecase/search_ships.dart';

part 'pedia_event.dart';
part 'pedia_state.dart';

class PediaBloc extends Bloc<PediaEvent, PediaState> {
  PediaBloc({
    @required GetSuggestiblePediaHistory suggestions,
    @required CachePediaHistory history,
    @required SearchAchievements achievements,
    @required SearchCommanders commanders,
    @required SearchCommanderRanks commanderRanks,
    @required SearchCommanderSkills commanderSkills,
    @required SearchModules modules,
    @required SearchShips ships,
    @required SearchShipParams shipParams,
    @required SearchPediaInfo info,
  })  : assert(suggestions != null),
        assert(history != null),
        assert(achievements != null),
        assert(commanders != null),
        assert(commanderSkills != null),
        assert(commanderRanks != null),
        assert(modules != null),
        assert(ships != null),
        assert(shipParams != null),
        assert(info != null),
        _suggestions = suggestions,
        _history = history,
        _achievements = achievements,
        _commanders = commanders,
        _commanderRanks = commanderRanks,
        _commanderSkills = commanderSkills,
        _modules = modules,
        _ships = ships,
        _shipParams = shipParams,
        _info = info;

  GetSuggestiblePediaHistory _suggestions;
  CachePediaHistory _history;
  SearchAchievements _achievements;
  SearchCommanders _commanders;
  SearchCommanderRanks _commanderRanks;
  SearchCommanderSkills _commanderSkills;
  SearchModules _modules;
  SearchShips _ships;
  SearchShipParams _shipParams;
  SearchPediaInfo _info;

  @override
  PediaState get initialState => PediaInitial();

  @override
  Stream<PediaState> mapEventToState(
    PediaEvent event,
  ) async* {
    if (event is SearchPediaSuggestionsLoaded) {
      yield* _handleSearchPediaSuggestionsLoaded(event);
    }

    if (event is SearchPediaHistoryCached) {
      yield* _handleSearchPediaHisotyCached(event);
    }

    if (event is SearchPediaAchievementsFound) {
      yield* _handleSearchPediaAchievementsFound(event);
    }

    if (event is SearchPediaCommandersFound) {
      yield* _handleSearchPediaCommandersFound(event);
    }

    if (event is SearchPediaCommanderRanksFound) {
      yield* _handleSearchPediaCommanderRanksFound(event);
    }

    if (event is SearchPediaCommanderSkillsFound) {
      yield* _handleSearchPediaCommanderSkillsFound(event);
    }

    if (event is SearchPediaModulesFound) {
      yield* _handleSearchPediaModulesFound(event);
    }

    if (event is SearchPediaShipsFound) {
      yield* _handleSearchPediaShipsFound(event);
    }

    if (event is SearchPediaShipParamsFound) {
      yield* _handleSearchPediaShipParamsFound(event);
    }

    if (event is SearchPediaInfoFound) {
      yield* _handleSearchPediaInfoFound(event);
    }
  }

  //* Evnet handler

  Stream<PediaState> _handleSearchPediaSuggestionsLoaded(
    SearchPediaSuggestionsLoaded event,
  ) async* {
    final failureOrSuggestions = await _suggestions(
      GetSuggestiblePediaHistoryParams(search: event.search),
    );
    yield failureOrSuggestions.fold(
      (failure) => const PediaSuggestionsLoadFailure(),
      (suggestions) => PediaSuggestionsLoadSuccess(suggestions: suggestions),
    );
  }

  Stream<PediaState> _handleSearchPediaHisotyCached(
    SearchPediaHistoryCached event,
  ) async* {
    final failureOrVoid = await _history(
      CacheSearchPediaHistoryParams(search: event.search),
    );
    yield failureOrVoid.fold(
      (failure) => const PediaHistoryCacheFailure(),
      (_) => const PediaHistoryCacheSuccess(),
    );
  }

  Stream<PediaState> _handleSearchPediaAchievementsFound(
    SearchPediaAchievementsFound event,
  ) async* {
    yield const AchievementsFindInProgress();

    final failureOrPlayers = await _achievements(
      SearchAchievementsParams(search: event.search),
    );

    yield failureOrPlayers.fold(
      (failure) => AchievementsFindFailure(
        message: _mapFailureToMessage(failure),
      ),
      (achievements) => AchievementsFindSuccess(achievements: achievements),
    );
  }

  Stream<PediaState> _handleSearchPediaCommandersFound(
    SearchPediaCommandersFound event,
  ) async* {
    yield const CommandersFindInProgress();

    final failureOrPlayers = await _commanders(
      SearchCommandersParams(search: event.search),
    );

    yield failureOrPlayers.fold(
      (failure) => CommandersFindFailure(
        message: _mapFailureToMessage(failure),
      ),
      (commanders) => CommandersFindSuccess(commanders: commanders),
    );
  }

  Stream<PediaState> _handleSearchPediaCommanderRanksFound(
    SearchPediaCommanderRanksFound event,
  ) async* {
    yield const CommanderRanksFindInProgress();

    final failureOrPlayers = await _commanderRanks(
      SearchCommanderRanksParams(search: event.search),
    );

    yield failureOrPlayers.fold(
      (failure) => CommanderRanksFindFailure(
        message: _mapFailureToMessage(failure),
      ),
      (commanderRanks) =>
          CommanderRanksFindSuccess(commanderRanks: commanderRanks),
    );
  }

  Stream<PediaState> _handleSearchPediaCommanderSkillsFound(
    SearchPediaCommanderSkillsFound event,
  ) async* {
    yield const CommanderSkillsFindInProgress();

    final failureOrPlayers = await _commanderSkills(
      SearchCommanderSkillsParams(search: event.search),
    );

    yield failureOrPlayers.fold(
      (failure) => CommanderSkillsFindFailure(
        message: _mapFailureToMessage(failure),
      ),
      (commanderSkills) =>
          CommanderSkillsFindSuccess(commanderSkills: commanderSkills),
    );
  }

  Stream<PediaState> _handleSearchPediaModulesFound(
    SearchPediaModulesFound event,
  ) async* {
    yield const ModulesFindInProgress();

    final failureOrPlayers = await _modules(
      SearchModulesParams(search: event.search),
    );

    yield failureOrPlayers.fold(
      (failure) => ModulesFindFailure(
        message: _mapFailureToMessage(failure),
      ),
      (modules) => ModulesFindSuccess(modules: modules),
    );
  }

  Stream<PediaState> _handleSearchPediaShipsFound(
    SearchPediaShipsFound event,
  ) async* {
    yield const ShipsFindInProgress();

    final failureOrPlayers = await _ships(
      SearchShipsParams(search: event.search),
    );

    yield failureOrPlayers.fold(
      (failure) => ShipsFindFailure(
        message: _mapFailureToMessage(failure),
      ),
      (ships) => ShipsFindSuccess(ships: ships),
    );
  }

  Stream<PediaState> _handleSearchPediaShipParamsFound(
    SearchPediaShipParamsFound event,
  ) async* {
    yield const ShipParamsFindInProgress();

    final failureOrPlayers = await _shipParams(
      SearchShipParamsParams(search: event.search),
    );

    yield failureOrPlayers.fold(
      (failure) => ShipParamsFindFailure(
        message: _mapFailureToMessage(failure),
      ),
      (shipParams) => ShipParamsFindSuccess(shipParams: shipParams),
    );
  }

  Stream<PediaState> _handleSearchPediaInfoFound(
    SearchPediaInfoFound event,
  ) async* {
    yield const InfoFindInProgress();

    final failureOrPlayers = await _info(
      SearchPediaInfoParams(search: event.search),
    );

    yield failureOrPlayers.fold(
      (failure) => InfoFindFailure(
        message: _mapFailureToMessage(failure),
      ),
      (info) => InfoFindSuccess(info: info),
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
