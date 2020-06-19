// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_module_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaModuleModel _$PediaModulesModelFromJson(Map<String, dynamic> json) {
  return PediaModuleModel(
    image: json['image'] as String,
    moduleId: json['module_id'] as num,
    moduleIdStr: json['module_id_str'] as String,
    name: json['name'] as String,
    priceCredit: json['price_credit'] as num,
    tag: json['tag'] as String,
    type: json['type'] as String,
    profile: json['profile'] == null
        ? null
        : PeidaModulesProfileModel.fromJson(
            json['profile'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaModulesModelToJson(PediaModuleModel instance) =>
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

PeidaModulesProfileModel _$PeidaModulesProfileModelFromJson(
    Map<String, dynamic> json) {
  return PeidaModulesProfileModel(
    artillery: json['artillery'] == null
        ? null
        : PediaDataArtilleryModel.fromJson(
            json['artillery'] as Map<String, dynamic>),
    diveBomber: json['dive_bomber'] == null
        ? null
        : PediaDataDiveBomberModel.fromJson(
            json['dive_bomber'] as Map<String, dynamic>),
    engine: json['engine'] == null
        ? null
        : PediaDataEngineModel.fromJson(json['engine'] as Map<String, dynamic>),
    fighters: json['fighters'] == null
        ? null
        : PediaDataFightersModel.fromJson(
            json['fighters'] as Map<String, dynamic>),
    fireControl: json['fire_control'] == null
        ? null
        : PediaDataFireControlModel.fromJson(
            json['fire_control'] as Map<String, dynamic>),
    flightControl: json['flight_control'] == null
        ? null
        : PediaDataFlightControlModel.fromJson(
            json['flight_control'] as Map<String, dynamic>),
    hull: json['hull'] == null
        ? null
        : PediaDataHullModel.fromJson(json['hull'] as Map<String, dynamic>),
    torpedoBomber: json['torpedo_bomber'] == null
        ? null
        : PediaDataTorpedoBomberModel.fromJson(
            json['torpedo_bomber'] as Map<String, dynamic>),
    torpedoes: json['torpedoes'] == null
        ? null
        : PediaDataTorpedoesModel.fromJson(
            json['torpedoes'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PeidaModulesProfileModelToJson(
        PeidaModulesProfileModel instance) =>
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
