// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_armour_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataArmourModel _$PediaDataArmourModelFromJson(Map<String, dynamic> json) {
  return PediaDataArmourModel(
    floodDamage: json['flood_damage'] as num,
    floodProb: json['flood_prob'] as num,
    health: json['health'] as num,
    total: json['total'] as num,
    casemate: json['casemate'] == null
        ? null
        : PediaDataArmourCasemateModel.fromJson(
            json['casemate'] as Map<String, dynamic>),
    citadel: json['citadel'] == null
        ? null
        : PediaDataArmourCitadelModel.fromJson(
            json['citadel'] as Map<String, dynamic>),
    deck: json['deck'] == null
        ? null
        : PediaDataArmourDeckModel.fromJson(
            json['deck'] as Map<String, dynamic>),
    extremities: json['extremities'] == null
        ? null
        : PediaDataArmourExtremitiesModel.fromJson(
            json['extremities'] as Map<String, dynamic>),
    range: json['range'] == null
        ? null
        : PediaDataArmourRangeModel.fromJson(
            json['range'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataArmourModelToJson(
        PediaDataArmourModel instance) =>
    <String, dynamic>{
      'flood_damage': instance.floodDamage,
      'flood_prob': instance.floodProb,
      'health': instance.health,
      'total': instance.total,
      'casemate': instance.casemate,
      'citadel': instance.citadel,
      'deck': instance.deck,
      'extremities': instance.extremities,
      'range': instance.range,
    };

PediaDataArmourDeckModel _$PediaDataArmourDeckModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataArmourDeckModel(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataArmourDeckModelToJson(
        PediaDataArmourDeckModel instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataArmourExtremitiesModel _$PediaDataArmourExtremitiesModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataArmourExtremitiesModel(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataArmourExtremitiesModelToJson(
        PediaDataArmourExtremitiesModel instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataArmourRangeModel _$PediaDataArmourRangeModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataArmourRangeModel(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataArmourRangeModelToJson(
        PediaDataArmourRangeModel instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataArmourCitadelModel _$PediaDataArmourCitadelModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataArmourCitadelModel(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataArmourCitadelModelToJson(
        PediaDataArmourCitadelModel instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataArmourCasemateModel _$PediaDataArmourCasemateModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataArmourCasemateModel(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataArmourCasemateModelToJson(
        PediaDataArmourCasemateModel instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };
