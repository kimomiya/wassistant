// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaInfo _$PediaInfoFromJson(Map<String, dynamic> json) {
  return PediaInfo(
    shipsUpdatedAt: json['ships_updated_at'] as int,
    shipTypes: json['ship_types'] as Map<String, dynamic>,
    language: json['language'] as Map<String, dynamic>,
    shipModifications: json['ship_modifications'] as Map<String, dynamic>,
    shipModules: json['ship_modules'] as Map<String, dynamic>,
    shipTypeImages: json['ship_type_images'] as Map<String, dynamic>,
    shipNations: json['ship_nations'] as Map<String, dynamic>,
    gameVersion: json['game_version'] as String,
  );
}

Map<String, dynamic> _$PediaInfoToJson(PediaInfo instance) => <String, dynamic>{
      'ships_updated_at': instance.shipsUpdatedAt,
      'ship_types': instance.shipTypes,
      'language': instance.language,
      'ship_modifications': instance.shipModifications,
      'ship_modules': instance.shipModules,
      'ship_type_images': instance.shipTypeImages,
      'ship_nations': instance.shipNations,
      'game_version': instance.gameVersion,
    };
