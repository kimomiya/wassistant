// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_atbas_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataAtbas _$PediaDataAtbasFromJson(Map<String, dynamic> json) {
  return PediaDataAtbas(
    distance: json['distance'] as num,
    slots: json['slots'] == null
        ? null
        : PediaDataAtbasSlots.fromJson(json['slots'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataAtbasToJson(PediaDataAtbas instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'slots': instance.slots,
    };

PediaDataAtbasSlots _$PediaDataAtbasSlotsFromJson(Map<String, dynamic> json) {
  return PediaDataAtbasSlots(
    bulletMass: json['bullet_mass'] as num,
    bulletSpeed: json['bullet_speed'] as num,
    burnProbability: json['burn_probability'] as num,
    damage: json['damage'] as num,
    gunRate: json['gun_rate'] as num,
    name: json['name'] as String,
    shotDelay: json['shot_delay'] as num,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$PediaDataAtbasSlotsToJson(
        PediaDataAtbasSlots instance) =>
    <String, dynamic>{
      'bullet_mass': instance.bulletMass,
      'bullet_speed': instance.bulletSpeed,
      'burn_probability': instance.burnProbability,
      'damage': instance.damage,
      'gun_rate': instance.gunRate,
      'name': instance.name,
      'shot_delay': instance.shotDelay,
      'type': instance.type,
    };
