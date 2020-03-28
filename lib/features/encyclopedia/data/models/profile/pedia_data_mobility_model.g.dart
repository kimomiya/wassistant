// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_mobility_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataMobility _$PediaDataMobilityFromJson(Map<String, dynamic> json) {
  return PediaDataMobility(
    maxSpeed: json['max_speed'] as num,
    rudderTime: json['rudder_time'] as num,
    total: json['total'] as num,
    turningRadius: json['turning_radius'] as num,
  );
}

Map<String, dynamic> _$PediaDataMobilityToJson(PediaDataMobility instance) =>
    <String, dynamic>{
      'max_speed': instance.maxSpeed,
      'rudder_time': instance.rudderTime,
      'total': instance.total,
      'turning_radius': instance.turningRadius,
    };
