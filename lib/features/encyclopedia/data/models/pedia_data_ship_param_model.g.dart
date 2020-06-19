// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_ship_param_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaShipParamModel _$PediaShipParamsModelFromJson(Map<String, dynamic> json) {
  return PediaShipParamModel(
    battleLevelRangeMax: json['battle_level_range_max'] as num,
    battleLevelRangeMin: json['battle_level_range_min'] as num,
    shipId: json['ship_id'] as num,
    antiAircraft: json['anti_aircraft'] == null
        ? null
        : PediaDataAntiAircraftModel.fromJson(
            json['anti_aircraft'] as Map<String, dynamic>),
    armour: json['armour'] == null
        ? null
        : PediaDataArmourModel.fromJson(json['armour'] as Map<String, dynamic>),
    artillery: json['artillery'] == null
        ? null
        : PediaDataArtilleryModel.fromJson(
            json['artillery'] as Map<String, dynamic>),
    atbas: json['atbas'] == null
        ? null
        : PediaDataAtbasModel.fromJson(json['atbas'] as Map<String, dynamic>),
    concealment: json['concealment'] == null
        ? null
        : PediaDataConcealmentModel.fromJson(
            json['concealment'] as Map<String, dynamic>),
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
    mobility: json['mobility'] == null
        ? null
        : PediaDataMobilityModel.fromJson(
            json['mobility'] as Map<String, dynamic>),
    torpedoBomber: json['torpedo_bomber'] == null
        ? null
        : PediaDataTorpedoBomberModel.fromJson(
            json['torpedo_bomber'] as Map<String, dynamic>),
    torpedoes: json['torpedoes'] == null
        ? null
        : PediaDataTorpedoesModel.fromJson(
            json['torpedoes'] as Map<String, dynamic>),
    weaponry: json['weaponry'] == null
        ? null
        : PediaDataWeaponryModel.fromJson(
            json['weaponry'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaShipParamsModelToJson(
        PediaShipParamModel instance) =>
    <String, dynamic>{
      'battle_level_range_max': instance.battleLevelRangeMax,
      'battle_level_range_min': instance.battleLevelRangeMin,
      'ship_id': instance.shipId,
      'anti_aircraft': instance.antiAircraft,
      'armour': instance.armour,
      'artillery': instance.artillery,
      'atbas': instance.atbas,
      'concealment': instance.concealment,
      'dive_bomber': instance.diveBomber,
      'engine': instance.engine,
      'fighters': instance.fighters,
      'fire_control': instance.fireControl,
      'flight_control': instance.flightControl,
      'hull': instance.hull,
      'mobility': instance.mobility,
      'torpedo_bomber': instance.torpedoBomber,
      'torpedoes': instance.torpedoes,
      'weaponry': instance.weaponry,
    };
