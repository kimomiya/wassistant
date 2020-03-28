// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_fighters_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataFighters _$PediaDataFightersFromJson(Map<String, dynamic> json) {
  return PediaDataFighters(
    avgDamage: json['avg_damage'] as num,
    cruiseSpeed: json['cruise_speed'] as num,
    fightersId: json['fighters_id'] as num,
    fightersIdStr: json['fighters_id_str'] as String,
    gunnerDamage: json['gunner_damage'] as num,
    maxAmmo: json['max_ammo'] as num,
    maxHealth: json['max_health'] as num,
    name: json['name'] as String,
    planeLevel: json['plane_level'] as num,
    prepareTime: json['prepare_time'] as num,
    squadrons: json['squadrons'] as num,
    countInSquadron: json['count_in_squadron'] == null
        ? null
        : PediaDataFightersCountInSquadron.fromJson(
            json['count_in_squadron'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataFightersToJson(PediaDataFighters instance) =>
    <String, dynamic>{
      'avg_damage': instance.avgDamage,
      'cruise_speed': instance.cruiseSpeed,
      'fighters_id': instance.fightersId,
      'fighters_id_str': instance.fightersIdStr,
      'gunner_damage': instance.gunnerDamage,
      'max_ammo': instance.maxAmmo,
      'max_health': instance.maxHealth,
      'name': instance.name,
      'plane_level': instance.planeLevel,
      'prepare_time': instance.prepareTime,
      'squadrons': instance.squadrons,
      'count_in_squadron': instance.countInSquadron,
    };

PediaDataFightersCountInSquadron _$PediaDataFightersCountInSquadronFromJson(
    Map<String, dynamic> json) {
  return PediaDataFightersCountInSquadron(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataFightersCountInSquadronToJson(
        PediaDataFightersCountInSquadron instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };
