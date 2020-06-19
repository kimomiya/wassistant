// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_commander_skill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaCommanderSkillModel _$PediaCommanderSkillsModelFromJson(
    Map<String, dynamic> json) {
  return PediaCommanderSkillModel(
    icon: json['icon'] as String,
    name: json['name'] as String,
    tier: json['tier'] as num,
    typeId: json['type_id'] as num,
    typeName: json['type_name'] as String,
    perks: json['perks'] == null
        ? null
        : PediaCommanderSkillsPerksModel.fromJson(
            json['perks'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaCommanderSkillsModelToJson(
        PediaCommanderSkillModel instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'tier': instance.tier,
      'type_id': instance.typeId,
      'type_name': instance.typeName,
      'perks': instance.perks,
    };

PediaCommanderSkillsPerksModel _$PediaCommanderSkillsPerksModelFromJson(
    Map<String, dynamic> json) {
  return PediaCommanderSkillsPerksModel(
    description: json['description'] as String,
    perkId: json['perk_id'] as num,
  );
}

Map<String, dynamic> _$PediaCommanderSkillsPerksModelToJson(
        PediaCommanderSkillsPerksModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'perk_id': instance.perkId,
    };