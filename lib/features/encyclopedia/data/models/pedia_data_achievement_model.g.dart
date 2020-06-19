// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_achievement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaAchievementModel _$PediaAchievementsModelFromJson(
    Map<String, dynamic> json) {
  return PediaAchievementModel(
    achievementId: json['achievement_id'] as String,
    battleTypes:
        (json['battle_types'] as List)?.map((e) => e as String)?.toList(),
    countPerBattle: json['count_per_battle'] as String,
    description: json['description'] as String,
    hidden: json['hidden'] as num,
    image: json['image'] as String,
    imageInactive: json['image_inactive'] as String,
    isProgress: json['is_progress'] as num,
    maxProgress: json['max_progress'] as num,
    maxShipLevel: json['max_ship_level'] as num,
    minShipLevel: json['min_ship_level'] as num,
    multiple: json['multiple'] as num,
    name: json['name'] as String,
    reward: json['reward'] as bool,
    subType: json['sub_type'] as String,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$PediaAchievementsModelToJson(
        PediaAchievementModel instance) =>
    <String, dynamic>{
      'achievement_id': instance.achievementId,
      'battle_types': instance.battleTypes,
      'count_per_battle': instance.countPerBattle,
      'description': instance.description,
      'hidden': instance.hidden,
      'image': instance.image,
      'image_inactive': instance.imageInactive,
      'is_progress': instance.isProgress,
      'max_progress': instance.maxProgress,
      'max_ship_level': instance.maxShipLevel,
      'min_ship_level': instance.minShipLevel,
      'multiple': instance.multiple,
      'name': instance.name,
      'reward': instance.reward,
      'sub_type': instance.subType,
      'type': instance.type,
    };
