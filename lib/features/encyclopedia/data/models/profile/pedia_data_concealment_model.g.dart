// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_concealment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataConcealmentModel _$PediaDataConcealmentModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataConcealmentModel(
    detectDistanceByPlane: json['detect_distance_by_plane'] as num,
    detectDistanceByShip: json['detect_distance_by_ship'] as num,
    total: json['total'] as num,
  );
}

Map<String, dynamic> _$PediaDataConcealmentModelToJson(
        PediaDataConcealmentModel instance) =>
    <String, dynamic>{
      'detect_distance_by_plane': instance.detectDistanceByPlane,
      'detect_distance_by_ship': instance.detectDistanceByShip,
      'total': instance.total,
    };
