import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/pedia_data.dart';

part 'pedia_data_achievements_model.g.dart';

@JsonSerializable()
class PediaAchievements extends PediaDataInterface {
  PediaAchievements({@required this.battle});

  @JsonKey(name: 'battle')
  final Map<String, PediaAchievementsBattle> battle;

  static PediaAchievements fromJson(Map<String, dynamic> json) {
    return _$PediaAchievementsFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaAchievements instance) {
    return _$PediaAchievementsToJson(instance);
  }
}

@JsonSerializable()
class PediaAchievementsBattle extends Equatable {
  PediaAchievementsBattle({
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

  @JsonKey(name: 'achievement_id')
  final String achievementId;
  @JsonKey(name: 'battle_types')
  // Battle types in which players can receive achievements. Battle types according to the PediaBattleTypes
  final List<String> battleTypes;
  // Indicates how many times achievement can be obtained per battle
  @JsonKey(name: 'count_per_battle')
  final String countPerBattle;
  @JsonKey(name: 'description')
  final String description;
  // Achievement unavailable
  @JsonKey(name: 'hidden')
  final num hidden;
  // Image link
  @JsonKey(name: 'image')
  final String image;
  // Image of an unearned achievement
  @JsonKey(name: 'image_inactive')
  final String imageInactive;
  // Indicates if achievement is in progress
  @JsonKey(name: 'is_progress')
  final num isProgress;
  // Maximum progress
  @JsonKey(name: 'max_progress')
  final num maxProgress;
  // Maximum tier of ship to receive this achievement
  @JsonKey(name: 'max_ship_level')
  final num maxShipLevel;
  // Minimum tier of ship to receive this achievement
  @JsonKey(name: 'min_ship_level')
  final num minShipLevel;
  // Achievement that can be received multiple times.
  @JsonKey(name: 'multiple')
  final num multiple;
  // Achievement name
  @JsonKey(name: 'name')
  final String name;
  // Indicates if a reward is granted for achievement
  @JsonKey(name: 'reward')
  final bool reward;
  // Subtype of achievement
  @JsonKey(name: 'sub_type')
  final String subType;
  // Type of achievement
  @JsonKey(name: 'type')
  final String type;

  static PediaAchievementsBattle fromJson(Map<String, dynamic> json) {
    return _$PediaAchievementsBattleFromJson(json);
  }

  Map<String, dynamic> toJson(PediaAchievementsBattle battle) {
    return _$PediaAchievementsBattleToJson(battle);
  }

  @override
  // TODO: implement props
  List<Object> get props => [
        achievementId,
        battleTypes,
        countPerBattle,
        description,
        hidden,
        image,
        imageInactive,
        isProgress,
        maxProgress,
        maxShipLevel,
        minShipLevel,
        multiple,
        name,
        reward,
        subType,
        type,
      ];
}
