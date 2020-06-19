// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_dive_bomber_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataDiveBomberModel _$PediaDataDiveBomberModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataDiveBomberModel(
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
        : PediaDataDiveBomberAccuracyModel.fromJson(
            json['accuracy'] as Map<String, dynamic>),
    countInSquadron: json['count_in_squadron'] == null
        ? null
        : PediaDataDiveBomberCountInSquadronModel.fromJson(
            json['count_in_squadron'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataDiveBomberModelToJson(
        PediaDataDiveBomberModel instance) =>
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

PediaDataDiveBomberCountInSquadronModel
    _$PediaDataDiveBomberCountInSquadronModelFromJson(
        Map<String, dynamic> json) {
  return PediaDataDiveBomberCountInSquadronModel(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataDiveBomberCountInSquadronModelToJson(
        PediaDataDiveBomberCountInSquadronModel instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataDiveBomberAccuracyModel _$PediaDataDiveBomberAccuracyModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataDiveBomberAccuracyModel(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataDiveBomberAccuracyModelToJson(
        PediaDataDiveBomberAccuracyModel instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };
