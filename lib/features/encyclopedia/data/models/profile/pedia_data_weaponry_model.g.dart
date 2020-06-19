// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_weaponry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataWeaponryModel _$PediaDataWeaponryModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataWeaponryModel(
    aircraft: json['aircraft'] as num,
    antiAircraft: json['anti_aircraft'] as num,
    artillery: json['artillery'] as num,
    torpedoes: json['torpedoes'] as num,
  );
}

Map<String, dynamic> _$PediaDataWeaponryModelToJson(
        PediaDataWeaponryModel instance) =>
    <String, dynamic>{
      'aircraft': instance.aircraft,
      'anti_aircraft': instance.antiAircraft,
      'artillery': instance.artillery,
      'torpedoes': instance.torpedoes,
    };
