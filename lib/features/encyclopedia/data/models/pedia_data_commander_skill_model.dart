import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_json_data.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/commander_skill.dart';

part 'pedia_data_commander_skill_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaCommanderSkillModel extends PediaCommanderSkill
    implements PediaJsonData {
  const PediaCommanderSkillModel({
    @required this.icon,
    @required this.name,
    @required this.tier,
    @required this.typeId,
    @required this.typeName,
    @required this.perks,
  });

  // URL to skill icon
  @override
  final String icon;
  // Name
  @override
  final String name;
  // Tier
  @override
  final num tier;
  // Skill type ID
  @override
  final num typeId;
  // Skill type name
  @override
  final String typeName;
  // Skills
  @override
  final PediaCommanderSkillsPerksModel perks;

  @override
  factory PediaCommanderSkillModel.fromJson(Map<String, dynamic> json) {
    return _$PediaCommanderSkillsModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$PediaCommanderSkillsModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaCommanderSkillsPerksModel extends PediaCommanderSkillsPerks
    implements PediaJsonData {
  const PediaCommanderSkillsPerksModel({
    this.description,
    this.perkId,
  });

  final String description;
  final num perkId;

  @override
  factory PediaCommanderSkillsPerksModel.fromJson(Map<String, dynamic> json) {
    return _$PediaCommanderSkillsPerksModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$PediaCommanderSkillsPerksModelToJson(this);
}
