// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_fire_control_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataFireControl _$PediaDataFireControlFromJson(Map<String, dynamic> json) {
  return PediaDataFireControl(
    distance: json['distance'] as num,
    distanceIncrease: json['distance_increase'] as num,
    fireControlId: json['fire_control_id'] as num,
    fireControlIdStr: json['fire_control_id_str'] as String,
  );
}

Map<String, dynamic> _$PediaDataFireControlToJson(
        PediaDataFireControl instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'distance_increase': instance.distanceIncrease,
      'fire_control_id': instance.fireControlId,
      'fire_control_id_str': instance.fireControlIdStr,
    };