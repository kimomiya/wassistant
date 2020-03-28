// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_torpedoes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataTorpedoes _$PediaDataTorpedoesFromJson(Map<String, dynamic> json) {
  return PediaDataTorpedoes(
    distance: json['distance'] as num,
    maxDamage: json['max_damage'] as num,
    reloadTime: json['reload_time'] as num,
    rotationTime: json['rotation_time'] as num,
    torpedoName: json['torpedo_name'] as String,
    torpedoSpeed: json['torpedo_speed'] as num,
    torpedoesId: json['torpedoes_id'] as num,
    torpedoesIdStr: json['torpedoes_id_str'] as String,
    visibilityDist: json['visibility_dist'] as num,
    slots: json['slots'] == null
        ? null
        : PediaDataTorpedoesSlots.fromJson(
            json['slots'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataTorpedoesToJson(PediaDataTorpedoes instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'max_damage': instance.maxDamage,
      'reload_time': instance.reloadTime,
      'rotation_time': instance.rotationTime,
      'torpedo_name': instance.torpedoName,
      'torpedo_speed': instance.torpedoSpeed,
      'torpedoes_id': instance.torpedoesId,
      'torpedoes_id_str': instance.torpedoesIdStr,
      'visibility_dist': instance.visibilityDist,
      'slots': instance.slots,
    };

PediaDataTorpedoesSlots _$PediaDataTorpedoesSlotsFromJson(
    Map<String, dynamic> json) {
  return PediaDataTorpedoesSlots(
    barrels: json['barrels'] as num,
    caliber: json['caliber'] as num,
    guns: json['guns'] as num,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$PediaDataTorpedoesSlotsToJson(
        PediaDataTorpedoesSlots instance) =>
    <String, dynamic>{
      'barrels': instance.barrels,
      'caliber': instance.caliber,
      'guns': instance.guns,
      'name': instance.name,
    };