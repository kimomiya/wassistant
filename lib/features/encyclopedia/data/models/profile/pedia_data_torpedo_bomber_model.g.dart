// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_torpedo_bomber_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataTorpedoBomberModel _$PediaDataTorpedoBomberModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataTorpedoBomberModel(
    cruiseSpeed: json['cruise_speed'] as num,
    gunnerDamage: json['gunner_damage'] as num,
    maxDamage: json['max_damage'] as num,
    maxHealth: json['max_health'] as num,
    name: json['name'] as String,
    planeLevel: json['plane_level'] as num,
    prepareTime: json['prepare_time'] as num,
    squadrons: json['squadrons'] as num,
    torpedoBomberId: json['torpedo_bomber_id'] as num,
    torpedoBomberIdStr: json['torpedo_bomber_id_str'] as String,
    torpedoDamage: json['torpedo_damage'] as num,
    torpedoDistance: json['torpedo_distance'] as num,
    torpedoMaxSpeed: json['torpedo_max_speed'] as num,
    torpedoName: json['torpedo_name'] as String,
    countInSquadron: json['count_in_squadron'] == null
        ? null
        : PediaDataTorpedoBomberCountInSquadronModel.fromJson(
            json['count_in_squadron'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataTorpedoBomberModelToJson(
        PediaDataTorpedoBomberModel instance) =>
    <String, dynamic>{
      'cruise_speed': instance.cruiseSpeed,
      'gunner_damage': instance.gunnerDamage,
      'max_damage': instance.maxDamage,
      'max_health': instance.maxHealth,
      'name': instance.name,
      'plane_level': instance.planeLevel,
      'prepare_time': instance.prepareTime,
      'squadrons': instance.squadrons,
      'torpedo_bomber_id': instance.torpedoBomberId,
      'torpedo_bomber_id_str': instance.torpedoBomberIdStr,
      'torpedo_damage': instance.torpedoDamage,
      'torpedo_distance': instance.torpedoDistance,
      'torpedo_max_speed': instance.torpedoMaxSpeed,
      'torpedo_name': instance.torpedoName,
      'count_in_squadron': instance.countInSquadron,
    };

PediaDataTorpedoBomberCountInSquadronModel
    _$PediaDataTorpedoBomberCountInSquadronModelFromJson(
        Map<String, dynamic> json) {
  return PediaDataTorpedoBomberCountInSquadronModel(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataTorpedoBomberCountInSquadronModelToJson(
        PediaDataTorpedoBomberCountInSquadronModel instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };
