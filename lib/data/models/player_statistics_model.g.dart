// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_statistics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerStatisticsModel _$PlayerStatisticsModelFromJson(
    Map<String, dynamic> json) {
  return PlayerStatisticsModel(
    battles: json['battles'] as int,
    distance: json['distance'] as int,
  );
}

Map<String, dynamic> _$PlayerStatisticsModelToJson(
        PlayerStatisticsModel instance) =>
    <String, dynamic>{
      'battles': instance.battles,
      'distance': instance.distance,
    };
