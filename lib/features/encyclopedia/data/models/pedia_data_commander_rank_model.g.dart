// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_commander_rank_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaCommanderRankModel _$PediaCommanderRanksModelFromJson(
    Map<String, dynamic> json) {
  return PediaCommanderRankModel(
    commonwealth: (json['commonwealth'] as List)
        ?.map((e) => e == null
            ? null
            : PediaCommanderRanksContentModel.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    europe: (json['europe'] as List)
        ?.map((e) => e == null
            ? null
            : PediaCommanderRanksContentModel.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    italy: (json['italy'] as List)
        ?.map((e) => e == null
            ? null
            : PediaCommanderRanksContentModel.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    usa: (json['usa'] as List)
        ?.map((e) => e == null
            ? null
            : PediaCommanderRanksContentModel.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    panAsia: (json['pan_asia'] as List)
        ?.map((e) => e == null
            ? null
            : PediaCommanderRanksContentModel.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    france: (json['france'] as List)
        ?.map((e) => e == null
            ? null
            : PediaCommanderRanksContentModel.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    ussr: (json['ussr'] as List)
        ?.map((e) => e == null
            ? null
            : PediaCommanderRanksContentModel.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    germany: (json['germany'] as List)
        ?.map((e) => e == null
            ? null
            : PediaCommanderRanksContentModel.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    uk: (json['uk'] as List)
        ?.map((e) => e == null
            ? null
            : PediaCommanderRanksContentModel.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    japan: (json['japan'] as List)
        ?.map((e) => e == null
            ? null
            : PediaCommanderRanksContentModel.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    panAmerica: (json['pan_america'] as List)
        ?.map((e) => e == null
            ? null
            : PediaCommanderRanksContentModel.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PediaCommanderRanksModelToJson(
        PediaCommanderRankModel instance) =>
    <String, dynamic>{
      'commonwealth': instance.commonwealth,
      'europe': instance.europe,
      'italy': instance.italy,
      'usa': instance.usa,
      'pan_asia': instance.panAsia,
      'france': instance.france,
      'ussr': instance.ussr,
      'germany': instance.germany,
      'uk': instance.uk,
      'japan': instance.japan,
      'pan_america': instance.panAmerica,
    };

PediaCommanderRanksContentModel _$PediaCommanderRanksContentModelFromJson(
    Map<String, dynamic> json) {
  return PediaCommanderRanksContentModel(
    experience: json['experience'] as num,
    name: json['name'] as String,
    rank: json['rank'] as num,
    names: (json['names'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
  );
}

Map<String, dynamic> _$PediaCommanderRanksContentModelToJson(
        PediaCommanderRanksContentModel instance) =>
    <String, dynamic>{
      'experience': instance.experience,
      'name': instance.name,
      'rank': instance.rank,
      'names': instance.names,
    };
