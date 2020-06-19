import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_json_data.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/achievement.dart';

part 'pedia_data_achievement_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaAchievementModel extends PediaAchievement implements PediaJsonData {
  const PediaAchievementModel({
    @required this.achievementId,
    @required this.battleTypes,
    @required this.countPerBattle,
    @required this.description,
    @required this.hidden,
    @required this.image,
    @required this.imageInactive,
    @required this.isProgress,
    @required this.maxProgress,
    @required this.maxShipLevel,
    @required this.minShipLevel,
    @required this.multiple,
    @required this.name,
    @required this.reward,
    @required this.subType,
    @required this.type,
  });

  @override
  final String achievementId;
  @override
  // Battle types in which players can receive achievements. Battle types according to the PediaBattleTypes
  final List<String> battleTypes;
  // Indicates how many times achievement can be obtained per battle
  @override
  final String countPerBattle;
  @override
  final String description;
  // Achievement unavailable
  @override
  final num hidden;
  // Image link
  @override
  final String image;
  // Image of an unearned achievement
  @override
  final String imageInactive;
  // Indicates if achievement is in progress
  @override
  final num isProgress;
  // Maximum progress
  @override
  final num maxProgress;
  // Maximum tier of ship to receive this achievement
  @override
  final num maxShipLevel;
  // Minimum tier of ship to receive this achievement
  @override
  final num minShipLevel;
  // Achievement that can be received multiple times.
  @override
  final num multiple;
  // Achievement name
  @override
  final String name;
  // Indicates if a reward is granted for achievement
  @override
  final bool reward;
  // Subtype of achievement
  @override
  final String subType;
  // Type of achievement
  @override
  final String type;

  @override
  factory PediaAchievementModel.fromJson(Map<String, dynamic> json) {
    return _$PediaAchievementsModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$PediaAchievementsModelToJson(this);
}
