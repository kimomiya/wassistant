part of 'pedia_bloc.dart';

abstract class PediaState extends Equatable {
  const PediaState();
}

class PediaInitial extends PediaState {
  @override
  List<Object> get props => [];
}

class PediaSuggestionsLoadSuccess extends PediaState {
  const PediaSuggestionsLoadSuccess({@required this.suggestions});

  final SearchPediaHistory suggestions;

  @override
  List<Object> get props => [suggestions];
}

class PediaSuggestionsLoadFailure extends PediaState {
  const PediaSuggestionsLoadFailure();

  @override
  List<Object> get props => [];
}

class PediaHistoryCacheSuccess extends PediaState {
  const PediaHistoryCacheSuccess();

  @override
  List<Object> get props => [];
}

class PediaHistoryCacheFailure extends PediaState {
  const PediaHistoryCacheFailure();

  @override
  List<Object> get props => [];
}

class AchievementsFindInProgress extends PediaState {
  const AchievementsFindInProgress();

  @override
  List<Object> get props => [];
}

class AchievementsFindSuccess extends PediaState {
  const AchievementsFindSuccess({@required this.achievements});

  final List<PediaAchievement> achievements;

  @override
  List<Object> get props => [achievements];
}

class AchievementsFindFailure extends PediaState {
  const AchievementsFindFailure({@required this.message});

  final String message;

  @override
  List<Object> get props => [message];
}

class CommandersFindInProgress extends PediaState {
  const CommandersFindInProgress();

  @override
  List<Object> get props => [];
}

class CommandersFindSuccess extends PediaState {
  const CommandersFindSuccess({@required this.commanders});

  final List<PediaCommander> commanders;

  @override
  List<Object> get props => [commanders];
}

class CommandersFindFailure extends PediaState {
  const CommandersFindFailure({@required this.message});

  final String message;

  @override
  List<Object> get props => [message];
}

class CommanderRanksFindInProgress extends PediaState {
  const CommanderRanksFindInProgress();

  @override
  List<Object> get props => [];
}

class CommanderRanksFindSuccess extends PediaState {
  const CommanderRanksFindSuccess({@required this.commanderRanks});

  final List<PediaCommanderRank> commanderRanks;

  @override
  List<Object> get props => [commanderRanks];
}

class CommanderRanksFindFailure extends PediaState {
  const CommanderRanksFindFailure({@required this.message});

  final String message;

  @override
  List<Object> get props => [message];
}

class CommanderSkillsFindInProgress extends PediaState {
  const CommanderSkillsFindInProgress();

  @override
  List<Object> get props => [];
}

class CommanderSkillsFindSuccess extends PediaState {
  const CommanderSkillsFindSuccess({@required this.commanderSkills});

  final List<PediaCommanderSkill> commanderSkills;

  @override
  List<Object> get props => [commanderSkills];
}

class CommanderSkillsFindFailure extends PediaState {
  const CommanderSkillsFindFailure({@required this.message});

  final String message;

  @override
  List<Object> get props => [message];
}

class ModulesFindInProgress extends PediaState {
  const ModulesFindInProgress();

  @override
  List<Object> get props => [];
}

class ModulesFindSuccess extends PediaState {
  const ModulesFindSuccess({@required this.modules});

  final List<PediaModule> modules;

  @override
  List<Object> get props => [modules];
}

class ModulesFindFailure extends PediaState {
  const ModulesFindFailure({@required this.message});

  final String message;

  @override
  List<Object> get props => [message];
}

class ShipsFindInProgress extends PediaState {
  const ShipsFindInProgress();

  @override
  List<Object> get props => [];
}

class ShipsFindSuccess extends PediaState {
  const ShipsFindSuccess({@required this.ships});

  final List<PediaShip> ships;

  @override
  List<Object> get props => [ships];
}

class ShipsFindFailure extends PediaState {
  const ShipsFindFailure({@required this.message});

  final String message;

  @override
  List<Object> get props => [message];
}

class ShipParamsFindInProgress extends PediaState {
  const ShipParamsFindInProgress();

  @override
  List<Object> get props => [];
}

class ShipParamsFindSuccess extends PediaState {
  const ShipParamsFindSuccess({@required this.shipParams});

  final List<PediaShipParam> shipParams;

  @override
  List<Object> get props => [shipParams];
}

class ShipParamsFindFailure extends PediaState {
  const ShipParamsFindFailure({@required this.message});

  final String message;

  @override
  List<Object> get props => [message];
}

class InfoFindInProgress extends PediaState {
  const InfoFindInProgress();

  @override
  List<Object> get props => [];
}

class InfoFindSuccess extends PediaState {
  const InfoFindSuccess({@required this.info});

  final List<PediaInfo> info;

  @override
  List<Object> get props => [info];
}

class InfoFindFailure extends PediaState {
  const InfoFindFailure({@required this.message});

  final String message;

  @override
  List<Object> get props => [message];
}
