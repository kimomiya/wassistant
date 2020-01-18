// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerStatistics _$PlayerStatisticsFromJson(Map<String, dynamic> json) {
  return PlayerStatistics(
    battles: json['battles'] as int,
    distance: json['distance'] as int,
  );
}

Map<String, dynamic> _$PlayerStatisticsToJson(PlayerStatistics instance) =>
    <String, dynamic>{
      'battles': instance.battles,
      'distance': instance.distance,
    };
