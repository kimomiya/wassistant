// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_anti_aircraft_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataAntiAircraft _$PediaDataAntiAircraftFromJson(
    Map<String, dynamic> json) {
  return PediaDataAntiAircraft(
    defense: json['defense'] as num,
    slots: json['slots'] == null
        ? null
        : PediaDataAntiAircraftSlots.fromJson(
            json['slots'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataAntiAircraftToJson(
        PediaDataAntiAircraft instance) =>
    <String, dynamic>{
      'defense': instance.defense,
      'slots': instance.slots,
    };

PediaDataAntiAircraftSlots _$PediaDataAntiAircraftSlotsFromJson(
    Map<String, dynamic> json) {
  return PediaDataAntiAircraftSlots(
    avgDamage: json['avg_damage'] as num,
    caliber: json['caliber'] as num,
    distance: json['distance'] as num,
    guns: json['guns'] as num,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$PediaDataAntiAircraftSlotsToJson(
        PediaDataAntiAircraftSlots instance) =>
    <String, dynamic>{
      'avg_damage': instance.avgDamage,
      'caliber': instance.caliber,
      'distance': instance.distance,
      'guns': instance.guns,
      'name': instance.name,
    };
