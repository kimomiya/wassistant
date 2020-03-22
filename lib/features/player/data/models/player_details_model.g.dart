// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerDetailsModel _$PlayerDetailsModelFromJson(Map<String, dynamic> json) {
  return PlayerDetailsModel(
    accountId: json['account_id'] as int,
    createdAt: json['created_at'] as int,
    hiddenProfile: json['hidden_profile'] as bool,
    karma: json['karma'] as int ?? 0,
    lastBattleTime: json['last_battle_time'] as int,
    levelingPoints: json['leveling_points'] as int,
    levelingTier: json['leveling_tier'] as int,
    logoutAt: json['logout_at'] as int,
    nickname: json['nickname'] as String,
    statsUpdatedAt: json['stats_updated_at'] as int,
    updatedAt: json['updated_at'] as int,
    statistics: json['statistics'] == null
        ? null
        : PlayerStatisticsModel.fromJson(
            json['statistics'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PlayerDetailsModelToJson(PlayerDetailsModel instance) =>
    <String, dynamic>{
      'account_id': instance.accountId,
      'created_at': instance.createdAt,
      'hidden_profile': instance.hiddenProfile,
      'karma': instance.karma,
      'last_battle_time': instance.lastBattleTime,
      'leveling_points': instance.levelingPoints,
      'leveling_tier': instance.levelingTier,
      'logout_at': instance.logoutAt,
      'nickname': instance.nickname,
      'stats_updated_at': instance.statsUpdatedAt,
      'updated_at': instance.updatedAt,
      'statistics': instance.statistics?.toJson(),
    };
