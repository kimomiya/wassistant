import 'package:json_annotation/json_annotation.dart';
import 'package:wassistant/models/player_statistics.dart';

part 'player_info.g.dart';

@JsonSerializable()
class PlayerInfo {
  PlayerInfo({
    this.accountId,
    this.createdAt,
    this.hiddenProfile,
    this.karma,
    this.lastBattleTime,
    this.levelingPoints,
    this.levelingTier,
    this.logoutAt,
    this.nickname,
    this.statsUpdatedAt,
    this.updatedAt,
    this.statistics,
  });

  factory PlayerInfo.fromJson(Map<String, dynamic> json) {
    return _$PlayerInfoFromJson(json);
  }

  /// User id
  @JsonKey(name: 'account_id')
  final int accountId;

  /// Date when player's account was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// Indicates if the game profile is hidden
  @JsonKey(name: 'hidden_profile')
  final bool hiddenProfile;

  /// Player's karma
  /// Warning: The field will be disabled.
  @JsonKey(defaultValue: 0)
  final int karma;

  /// Last battle time
  @JsonKey(name: 'last_battle_time')
  final DateTime lastBattleTime;

  /// Service Record level
  @JsonKey(name: 'leveling_points')
  final int levelingPoints;

  /// Service Record points
  @JsonKey(name: 'leveling_tier')
  final int levelingTier;

  /// End time of last game session
  @JsonKey(name: 'logout_at')
  final DateTime logoutAt;

  /// Player name
  final String nickname;

  /// Date when stats for player and player's ships were updated
  @JsonKey(name: 'stats_updated_at')
  final DateTime statsUpdatedAt;

  /// Date when player details were updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// Player statistics
  final PlayerStatistics statistics;

  Map<String, dynamic> toJson() => _$PlayerInfoToJson(this);
}
