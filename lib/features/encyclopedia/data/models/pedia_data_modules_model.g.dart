// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_modules_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaModules _$PediaModulesFromJson(Map<String, dynamic> json) {
  return PediaModules(
    image: json['image'] as String,
    moduleId: json['module_id'] as num,
    moduleIdStr: json['module_id_str'] as String,
    name: json['name'] as String,
    priceCredit: json['price_credit'] as num,
    tag: json['tag'] as String,
    type: json['type'] as String,
    profile: json['profile'] == null
        ? null
        : PeidaModulesProfile.fromJson(json['profile'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaModulesToJson(PediaModules instance) =>
    <String, dynamic>{
      'image': instance.image,
      'module_id': instance.moduleId,
      'module_id_str': instance.moduleIdStr,
      'name': instance.name,
      'price_credit': instance.priceCredit,
      'tag': instance.tag,
      'type': instance.type,
      'profile': instance.profile,
    };

PeidaModulesProfile _$PeidaModulesProfileFromJson(Map<String, dynamic> json) {
  return PeidaModulesProfile(
    artillery: json['artillery'] == null
        ? null
        : PediaDataArtillery.fromJson(
            json['artillery'] as Map<String, dynamic>),
    diveBomber: json['dive_bomber'] == null
        ? null
        : PediaDataDiveBomber.fromJson(
            json['dive_bomber'] as Map<String, dynamic>),
    engine: json['engine'] == null
        ? null
        : PediaDataEngine.fromJson(json['engine'] as Map<String, dynamic>),
    fighters: json['fighters'] == null
        ? null
        : PediaDataFighters.fromJson(json['fighters'] as Map<String, dynamic>),
    fireControl: json['fire_control'] == null
        ? null
        : PediaDataFireControl.fromJson(
            json['fire_control'] as Map<String, dynamic>),
    flightControl: json['flight_control'] == null
        ? null
        : PediaDataFlightControl.fromJson(
            json['flight_control'] as Map<String, dynamic>),
    hull: json['hull'] == null
        ? null
        : PediaDataHull.fromJson(json['hull'] as Map<String, dynamic>),
    torpedoBomber: json['torpedo_bomber'] == null
        ? null
        : PediaDataTorpedoBomber.fromJson(
            json['torpedo_bomber'] as Map<String, dynamic>),
    torpedoes: json['torpedoes'] == null
        ? null
        : PediaDataTorpedoes.fromJson(
            json['torpedoes'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PeidaModulesProfileToJson(
        PeidaModulesProfile instance) =>
    <String, dynamic>{
      'artillery': instance.artillery,
      'dive_bomber': instance.diveBomber,
      'engine': instance.engine,
      'fighters': instance.fighters,
      'fire_control': instance.fireControl,
      'flight_control': instance.flightControl,
      'hull': instance.hull,
      'torpedo_bomber': instance.torpedoBomber,
      'torpedoes': instance.torpedoes,
    };
