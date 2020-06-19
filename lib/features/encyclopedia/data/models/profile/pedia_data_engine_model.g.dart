// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_engine_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataEngineModel _$PediaDataEngineModelFromJson(Map<String, dynamic> json) {
  return PediaDataEngineModel(
    engineId: json['engine_id'] as num,
    engineIdStr: json['engine_id_str'] as String,
    maxSpeed: json['max_speed'] as num,
  );
}

Map<String, dynamic> _$PediaDataEngineModelToJson(
        PediaDataEngineModel instance) =>
    <String, dynamic>{
      'engine_id': instance.engineId,
      'engine_id_str': instance.engineIdStr,
      'max_speed': instance.maxSpeed,
    };
