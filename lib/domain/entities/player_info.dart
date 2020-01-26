import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
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
  @JsonKey(name: 'account_id')
  final int accountId;

  /// Date when player's account was created
  @JsonKey(name: 'created_at')
  final int createdAt;

  /// Indicates if the game profile is hidden
  @JsonKey(name: 'hidden_profile')
  final bool hiddenProfile;

  /// Player's karma
  /// Warning: The field will be disabled.
  @JsonKey(defaultValue: 0)
  final int karma;

  /// Last battle time
  @JsonKey(name: 'last_battle_time')
  final int lastBattleTime;

  /// Service Record level
  @JsonKey(name: 'leveling_points')
  final int levelingPoints;

  /// Service Record points
  @JsonKey(name: 'leveling_tier')
  final int levelingTier;

  /// End time of last game session
  @JsonKey(name: 'logout_at')
  final int logoutAt;

  /// Player name
  final String nickname;

  /// Date when stats for player and player's ships were updated
  @JsonKey(name: 'stats_updated_at')
  final int statsUpdatedAt;

  /// Date when player details were updated
  @JsonKey(name: 'updated_at')
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
