// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_commander_ranks_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaCommanderRanksContent _$PediaCommanderRanksContentFromJson(
    Map<String, dynamic> json) {
  return PediaCommanderRanksContent(
    experience: json['experience'] as num,
    name: json['name'] as String,
    rank: json['rank'] as num,
    names: (json['names'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
  );
}

Map<String, dynamic> _$PediaCommanderRanksContentToJson(
        PediaCommanderRanksContent instance) =>
    <String, dynamic>{
      'experience': instance.experience,
      'name': instance.name,
      'rank': instance.rank,
      'names': instance.names,
    };
