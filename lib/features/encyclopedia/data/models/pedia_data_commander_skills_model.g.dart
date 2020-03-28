// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_commander_skills_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaCommanderSkills _$PediaCommanderSkillsFromJson(Map<String, dynamic> json) {
  return PediaCommanderSkills(
    icon: json['icon'] as String,
    name: json['name'] as String,
    tier: json['tier'] as num,
    typeId: json['type_id'] as num,
    typeName: json['type_name'] as String,
    perks: json['perks'] == null
        ? null
        : PediaCommanderSkillsPerks.fromJson(
            json['perks'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaCommanderSkillsToJson(
        PediaCommanderSkills instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'tier': instance.tier,
      'type_id': instance.typeId,
      'type_name': instance.typeName,
      'perks': instance.perks,
    };

PediaCommanderSkillsPerks _$PediaCommanderSkillsPerksFromJson(
    Map<String, dynamic> json) {
  return PediaCommanderSkillsPerks(
    description: json['description'] as String,
    perkId: json['perk_id'] as num,
  );
}

Map<String, dynamic> _$PediaCommanderSkillsPerksToJson(
        PediaCommanderSkillsPerks instance) =>
    <String, dynamic>{
      'description': instance.description,
      'perk_id': instance.perkId,
    };
