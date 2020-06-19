// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_artillery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataArtilleryModel _$PediaDataArtilleryModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataArtilleryModel(
    artilleryId: json['artillery_id'] as num,
    artilleryIdStr: json['artillery_id_str'] as String,
    distance: json['distance'] as num,
    gunRate: json['gun_rate'] as num,
    maxDispersion: json['max_dispersion'] as num,
    rotationTime: json['rotation_time'] as num,
    shotDelay: json['shot_delay'] as num,
    shells: json['shells'] == null
        ? null
        : PediaDataArtilleryShellsModel.fromJson(
            json['shells'] as Map<String, dynamic>),
    slots: json['slots'] == null
        ? null
        : PediaDataArtillerySlotsModel.fromJson(
            json['slots'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataArtilleryModelToJson(
        PediaDataArtilleryModel instance) =>
    <String, dynamic>{
      'artillery_id': instance.artilleryId,
      'artillery_id_str': instance.artilleryIdStr,
      'distance': instance.distance,
      'gun_rate': instance.gunRate,
      'max_dispersion': instance.maxDispersion,
      'rotation_time': instance.rotationTime,
      'shot_delay': instance.shotDelay,
      'shells': instance.shells,
      'slots': instance.slots,
    };

PediaDataArtillerySlotsModel _$PediaDataArtillerySlotsModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataArtillerySlotsModel(
    barrels: json['barrels'] as num,
    guns: json['guns'] as num,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$PediaDataArtillerySlotsModelToJson(
        PediaDataArtillerySlotsModel instance) =>
    <String, dynamic>{
      'barrels': instance.barrels,
      'guns': instance.guns,
      'name': instance.name,
    };

PediaDataArtilleryShellsModel _$PediaDataArtilleryShellsModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataArtilleryShellsModel(
    bulletMass: json['bullet_mass'] as num,
    bulletSpeed: json['bullet_speed'] as num,
    burnProbability: json['burn_probability'] as num,
    damage: json['damage'] as num,
    name: json['name'] as String,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$PediaDataArtilleryShellsModelToJson(
        PediaDataArtilleryShellsModel instance) =>
    <String, dynamic>{
      'bullet_mass': instance.bulletMass,
      'bullet_speed': instance.bulletSpeed,
      'burn_probability': instance.burnProbability,
      'damage': instance.damage,
      'name': instance.name,
      'type': instance.type,
    };
