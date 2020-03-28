// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_armour_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataArmour _$PediaDataArmourFromJson(Map<String, dynamic> json) {
  return PediaDataArmour(
    floodDamage: json['flood_damage'] as num,
    floodProb: json['flood_prob'] as num,
    health: json['health'] as num,
    total: json['total'] as num,
    casemate: json['casemate'] == null
        ? null
        : PediaDataArmourCasemate.fromJson(
            json['casemate'] as Map<String, dynamic>),
    citadel: json['citadel'] == null
        ? null
        : PediaDataArmourCitadel.fromJson(
            json['citadel'] as Map<String, dynamic>),
    deck: json['deck'] == null
        ? null
        : PediaDataArmourDeck.fromJson(json['deck'] as Map<String, dynamic>),
    extremities: json['extremities'] == null
        ? null
        : PediaDataArmourExtremities.fromJson(
            json['extremities'] as Map<String, dynamic>),
    range: json['range'] == null
        ? null
        : PediaDataArmourRange.fromJson(json['range'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataArmourToJson(PediaDataArmour instance) =>
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

PediaDataArmourDeck _$PediaDataArmourDeckFromJson(Map<String, dynamic> json) {
  return PediaDataArmourDeck(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataArmourDeckToJson(
        PediaDataArmourDeck instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataArmourExtremities _$PediaDataArmourExtremitiesFromJson(
    Map<String, dynamic> json) {
  return PediaDataArmourExtremities(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataArmourExtremitiesToJson(
        PediaDataArmourExtremities instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataArmourRange _$PediaDataArmourRangeFromJson(Map<String, dynamic> json) {
  return PediaDataArmourRange(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataArmourRangeToJson(
        PediaDataArmourRange instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataArmourCitadel _$PediaDataArmourCitadelFromJson(
    Map<String, dynamic> json) {
  return PediaDataArmourCitadel(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataArmourCitadelToJson(
        PediaDataArmourCitadel instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataArmourCasemate _$PediaDataArmourCasemateFromJson(
    Map<String, dynamic> json) {
  return PediaDataArmourCasemate(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataArmourCasemateToJson(
        PediaDataArmourCasemate instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };
