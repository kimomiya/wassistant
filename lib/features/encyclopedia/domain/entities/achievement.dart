import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class PediaAchievement extends Equatable {
  const PediaAchievement({
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

  final String achievementId;
  // Battle types in which players can receive achievements. Battle types according to the PediaBattleTypes
  final List<String> battleTypes;
  // Indicates how many times achievement can be obtained per battle
  final String countPerBattle;

  final String description;
  // Achievement unavailable
  final num hidden;
  // Image link
  final String image;
  // Image of an unearned achievement
  final String imageInactive;
  // Indicates if achievement is in progress
  final num isProgress;
  // Maximum progress
  final num maxProgress;
  // Maximum tier of ship to receive this achievement
  final num maxShipLevel;
  // Minimum tier of ship to receive this achievement
  final num minShipLevel;
  // Achievement that can be received multiple times.
  final num multiple;
  // Achievement name
  final String name;
  // Indicates if a reward is granted for achievement
  final bool reward;
  // Subtype of achievement
  final String subType;
  // Type of achievement
  final String type;
  @override
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
