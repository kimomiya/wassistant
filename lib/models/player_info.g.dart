// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerInfo _$PlayerInfoFromJson(Map<String, dynamic> json) {
  return PlayerInfo(
    accountId: json['account_id'] as int,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    hiddenProfile: json['hidden_profile'] as bool,
    karma: json['karma'] as int ?? 0,
    lastBattleTime: json['last_battle_time'] == null
        ? null
        : DateTime.parse(json['last_battle_time'] as String),
    levelingPoints: json['leveling_points'] as int,
    levelingTier: json['leveling_tier'] as int,
    logoutAt: json['logout_at'] == null
        ? null
        : DateTime.parse(json['logout_at'] as String),
    nickname: json['nickname'] as String,
    statsUpdatedAt: json['stats_updated_at'] == null
        ? null
        : DateTime.parse(json['stats_updated_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    statistics: json['statistics'] == null
        ? null
        : PlayerStatistics.fromJson(json['statistics'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PlayerInfoToJson(PlayerInfo instance) =>
    <String, dynamic>{
      'account_id': instance.accountId,
      'created_at': instance.createdAt?.toIso8601String(),
      'hidden_profile': instance.hiddenProfile,
      'karma': instance.karma,
      'last_battle_time': instance.lastBattleTime?.toIso8601String(),
      'leveling_points': instance.levelingPoints,
      'leveling_tier': instance.levelingTier,
      'logout_at': instance.logoutAt?.toIso8601String(),
      'nickname': instance.nickname,
      'stats_updated_at': instance.statsUpdatedAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'statistics': instance.statistics,
    };
