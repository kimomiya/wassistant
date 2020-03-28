// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_artillery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataArtillery _$PediaDataArtilleryFromJson(Map<String, dynamic> json) {
  return PediaDataArtillery(
    artilleryId: json['artillery_id'] as num,
    artilleryIdStr: json['artillery_id_str'] as String,
    distance: json['distance'] as num,
    gunRate: json['gun_rate'] as num,
    maxDispersion: json['max_dispersion'] as num,
    rotationTime: json['rotation_time'] as num,
    shotDelay: json['shot_delay'] as num,
    shells: json['shells'] == null
        ? null
        : PediaDataArtilleryShells.fromJson(
            json['shells'] as Map<String, dynamic>),
    slots: json['slots'] == null
        ? null
        : PediaDataArtillerySlots.fromJson(
            json['slots'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataArtilleryToJson(PediaDataArtillery instance) =>
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

PediaDataArtillerySlots _$PediaDataArtillerySlotsFromJson(
    Map<String, dynamic> json) {
  return PediaDataArtillerySlots(
    barrels: json['barrels'] as num,
    guns: json['guns'] as num,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$PediaDataArtillerySlotsToJson(
        PediaDataArtillerySlots instance) =>
    <String, dynamic>{
      'barrels': instance.barrels,
      'guns': instance.guns,
      'name': instance.name,
    };

PediaDataArtilleryShells _$PediaDataArtilleryShellsFromJson(
    Map<String, dynamic> json) {
  return PediaDataArtilleryShells(
    bulletMass: json['bullet_mass'] as num,
    bulletSpeed: json['bullet_speed'] as num,
    burnProbability: json['burn_probability'] as num,
    damage: json['damage'] as num,
    name: json['name'] as String,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$PediaDataArtilleryShellsToJson(
        PediaDataArtilleryShells instance) =>
    <String, dynamic>{
      'bullet_mass': instance.bulletMass,
      'bullet_speed': instance.bulletSpeed,
      'burn_probability': instance.burnProbability,
      'damage': instance.damage,
      'name': instance.name,
      'type': instance.type,
    };
