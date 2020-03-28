// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_hull_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataHull _$PediaDataHullFromJson(Map<String, dynamic> json) {
  return PediaDataHull(
    antiAircraftBarrels: json['anti_aircraft_barrels'] as num,
    artilleryBarrels: json['artillery_barrels'] as num,
    atbaBarrels: json['atba_barrels'] as num,
    health: json['health'] as num,
    hullId: json['hull_id'] as num,
    hullIdStr: json['hull_id_str'] as String,
    planesAmount: json['planes_amount'] as num,
    torpedoesBarrels: json['torpedoes_barrels'] as num,
    range: json['range'] == null
        ? null
        : PediaDataHullRange.fromJson(json['range'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataHullToJson(PediaDataHull instance) =>
    <String, dynamic>{
      'anti_aircraft_barrels': instance.antiAircraftBarrels,
      'artillery_barrels': instance.artilleryBarrels,
      'atba_barrels': instance.atbaBarrels,
      'health': instance.health,
      'hull_id': instance.hullId,
      'hull_id_str': instance.hullIdStr,
      'planes_amount': instance.planesAmount,
      'torpedoes_barrels': instance.torpedoesBarrels,
      'range': instance.range,
    };

PediaDataHullRange _$PediaDataHullRangeFromJson(Map<String, dynamic> json) {
  return PediaDataHullRange(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataHullRangeToJson(PediaDataHullRange instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };
