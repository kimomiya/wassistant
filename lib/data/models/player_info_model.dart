import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/player_info.dart';
import 'player_statistics_model.dart';

part 'player_info_model.g.dart';

@JsonSerializable()
class PlayerInfoModel extends PlayerInfo {
  const PlayerInfoModel({
    @required int accountId,
    @required int createdAt,
    @required bool hiddenProfile,
    @required int karma,
    @required int lastBattleTime,
    @required int levelingPoints,
    @required int levelingTier,
    @required int logoutAt,
    @required String nickname,
    @required int statsUpdatedAt,
    @required int updatedAt,
    @required this.statistics,
  }) : super(
          accountId: accountId,
          createdAt: createdAt,
          hiddenProfile: hiddenProfile,
          karma: karma,
          lastBattleTime: lastBattleTime,
          levelingPoints: levelingPoints,
          levelingTier: levelingTier,
          logoutAt: logoutAt,
          nickname: nickname,
          statsUpdatedAt: statsUpdatedAt,
          updatedAt: updatedAt,
          statistics: statistics,
        );

  factory PlayerInfoModel.fromJson(Map<String, dynamic> json) {
    return _$PlayerInfoModelFromJson(json);
  }

  @override
  final PlayerStatisticsModel statistics;

  Map<String, dynamic> toJson() => _$PlayerInfoModelToJson(this);
}
