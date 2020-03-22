import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/player_details.dart';
import 'player_statistics_model.dart';

part 'player_details_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PlayerDetailsModel extends PlayerDetails {
  const PlayerDetailsModel({
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

  factory PlayerDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$PlayerDetailsModelFromJson(json);
  }

  /// User id
  @override
  @JsonKey(name: 'account_id')
  final int accountId;

  /// Date when player's account was created
  @override
  @JsonKey(name: 'created_at')
  final int createdAt;

  /// Indicates if the game profile is hidden
  @override
  @JsonKey(name: 'hidden_profile')
  final bool hiddenProfile;

  /// Player's karma
  /// Warning: The field will be disabled.
  @override
  @JsonKey(defaultValue: 0)
  final int karma;

  /// Last battle time
  @override
  @JsonKey(name: 'last_battle_time')
  final int lastBattleTime;

  /// Service Record level
  @override
  @JsonKey(name: 'leveling_points')
  final int levelingPoints;

  /// Service Record points
  @override
  @JsonKey(name: 'leveling_tier')
  final int levelingTier;

  /// End time of last game session
  @override
  @JsonKey(name: 'logout_at')
  final int logoutAt;

  /// Player name
  @override
  final String nickname;

  /// Date when stats for player and player's ships were updated
  @override
  @JsonKey(name: 'stats_updated_at')
  final int statsUpdatedAt;

  /// Date when player details were updated
  @override
  @JsonKey(name: 'updated_at')
  final int updatedAt;

  /// Player statistics
  @override
  final PlayerStatisticsModel statistics;

  Map<String, dynamic> toJson() => _$PlayerDetailsModelToJson(this);
}
