// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_weaponry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataWeaponry _$PediaDataWeaponryFromJson(Map<String, dynamic> json) {
  return PediaDataWeaponry(
    aircraft: json['aircraft'] as num,
    antiAircraft: json['anti_aircraft'] as num,
    artillery: json['artillery'] as num,
    torpedoes: json['torpedoes'] as num,
  );
}

Map<String, dynamic> _$PediaDataWeaponryToJson(PediaDataWeaponry instance) =>
    <String, dynamic>{
      'aircraft': instance.aircraft,
      'anti_aircraft': instance.antiAircraft,
      'artillery': instance.artillery,
      'torpedoes': instance.torpedoes,
    };
