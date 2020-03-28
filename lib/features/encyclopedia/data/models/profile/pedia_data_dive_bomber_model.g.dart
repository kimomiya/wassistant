// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_dive_bomber_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataDiveBomber _$PediaDataDiveBomberFromJson(Map<String, dynamic> json) {
  return PediaDataDiveBomber(
    bombBulletMass: json['bomb_bullet_mass'] as num,
    bombBurnProbability: json['bomb_burn_probability'] as num,
    bombDamage: json['bomb_damage'] as num,
    bombName: json['bomb_name'] as String,
    cruiseSpeed: json['cruise_speed'] as num,
    diveBomberId: json['dive_bomber_id'] as num,
    diveBomberIdStr: json['dive_bomber_id_str'] as String,
    gunnerDamage: json['gunner_damage'] as num,
    maxDamage: json['max_damage'] as num,
    maxHealth: json['max_health'] as num,
    name: json['name'] as String,
    planeLevel: json['plane_level'] as num,
    prepareTime: json['prepare_time'] as num,
    squadrons: json['squadrons'] as num,
    accuracy: json['accuracy'] == null
        ? null
        : PediaDataDiveBomberAccuracy.fromJson(
            json['accuracy'] as Map<String, dynamic>),
    countInSquadron: json['count_in_squadron'] == null
        ? null
        : PediaDataDiveBomberCountInSquadron.fromJson(
            json['count_in_squadron'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataDiveBomberToJson(
        PediaDataDiveBomber instance) =>
    <String, dynamic>{
      'bomb_bullet_mass': instance.bombBulletMass,
      'bomb_burn_probability': instance.bombBurnProbability,
      'bomb_damage': instance.bombDamage,
      'bomb_name': instance.bombName,
      'cruise_speed': instance.cruiseSpeed,
      'dive_bomber_id': instance.diveBomberId,
      'dive_bomber_id_str': instance.diveBomberIdStr,
      'gunner_damage': instance.gunnerDamage,
      'max_damage': instance.maxDamage,
      'max_health': instance.maxHealth,
      'name': instance.name,
      'plane_level': instance.planeLevel,
      'prepare_time': instance.prepareTime,
      'squadrons': instance.squadrons,
      'accuracy': instance.accuracy,
      'count_in_squadron': instance.countInSquadron,
    };

PediaDataDiveBomberCountInSquadron _$PediaDataDiveBomberCountInSquadronFromJson(
    Map<String, dynamic> json) {
  return PediaDataDiveBomberCountInSquadron(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataDiveBomberCountInSquadronToJson(
        PediaDataDiveBomberCountInSquadron instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataDiveBomberAccuracy _$PediaDataDiveBomberAccuracyFromJson(
    Map<String, dynamic> json) {
  return PediaDataDiveBomberAccuracy(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataDiveBomberAccuracyToJson(
        PediaDataDiveBomberAccuracy instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };
