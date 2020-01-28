import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'player_statistics.dart';

class PlayerInfo extends Equatable {
  const PlayerInfo({
    @required this.accountId,
    @required this.createdAt,
    @required this.hiddenProfile,
    @required this.karma,
    @required this.lastBattleTime,
    @required this.levelingPoints,
    @required this.levelingTier,
    @required this.logoutAt,
    @required this.nickname,
    @required this.statsUpdatedAt,
    @required this.updatedAt,
    @required this.statistics,
  });

  /// User id
  final int accountId;

  /// Date when player's account was created
  final int createdAt;

  /// Indicates if the game profile is hidden
  final bool hiddenProfile;

  /// Player's karma
  /// Warning: The field will be disabled.
  final int karma;

  /// Last battle time
  final int lastBattleTime;

  /// Service Record level
  final int levelingPoints;

  /// Service Record points
  final int levelingTier;

  /// End time of last game session
  final int logoutAt;

  /// Player name
  final String nickname;

  /// Date when stats for player and player's ships were updated
  final int statsUpdatedAt;

  /// Date when player details were updated
  final int updatedAt;

  /// Player statistics
  final PlayerStatistics statistics;

  @override
  List<Object> get props => [
        accountId,
        createdAt,
        hiddenProfile,
        karma,
        lastBattleTime,
        levelingPoints,
        levelingTier,
        logoutAt,
        nickname,
        statsUpdatedAt,
        updatedAt,
        statistics,
      ];
}
