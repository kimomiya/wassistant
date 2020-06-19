// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_anti_aircraft_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataAntiAircraftModel _$PediaDataAntiAircraftModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataAntiAircraftModel(
    defense: json['defense'] as num,
    slots: json['slots'] == null
        ? null
        : PediaDataAntiAircraftSlotsModel.fromJson(
            json['slots'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataAntiAircraftModelToJson(
        PediaDataAntiAircraftModel instance) =>
    <String, dynamic>{
      'defense': instance.defense,
      'slots': instance.slots,
    };

PediaDataAntiAircraftSlotsModel _$PediaDataAntiAircraftSlotsModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataAntiAircraftSlotsModel(
    avgDamage: json['avg_damage'] as num,
    caliber: json['caliber'] as num,
    distance: json['distance'] as num,
    guns: json['guns'] as num,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$PediaDataAntiAircraftSlotsModelToJson(
        PediaDataAntiAircraftSlotsModel instance) =>
    <String, dynamic>{
      'avg_damage': instance.avgDamage,
      'caliber': instance.caliber,
      'distance': instance.distance,
      'guns': instance.guns,
      'name': instance.name,
    };
