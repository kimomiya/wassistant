import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/pedia_data.dart';

part 'pedia_data_commander_skills_model.g.dart';

@JsonSerializable()
class PediaCommanderSkills extends PediaDataInterface {
  PediaCommanderSkills({
    @required this.icon,
    @required this.name,
    @required this.tier,
    @required this.typeId,
    @required this.typeName,
    @required this.perks,
  });

  // URL to skill icon
  @JsonKey(name: 'icon')
  final String icon;
  // Name
  @JsonKey(name: 'name')
  final String name;
  // Tier
  @JsonKey(name: 'tier')
  final num tier;
  // Skill type ID
  @JsonKey(name: 'type_id')
  final num typeId;
  // Skill type name
  @JsonKey(name: 'type_name')
  final String typeName;
  // Skills
  @JsonKey(name: 'perks')
  final PediaCommanderSkillsPerks perks;

  static PediaCommanderSkills fromJson(Map<String, dynamic> json) {
    return _$PediaCommanderSkillsFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaCommanderSkills instance) {
    return _$PediaCommanderSkillsToJson(instance);
  }
}

@JsonSerializable()
class PediaCommanderSkillsPerks extends Equatable {
  PediaCommanderSkillsPerks({
    this.description,
    this.perkId,
  });

  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'perk_id')
  final num perkId;

  static PediaCommanderSkillsPerks fromJson(Map<String, dynamic> json) {
    return _$PediaCommanderSkillsPerksFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaCommanderSkillsPerksToJson(this);
  }

  @override
  List<Object> get props => [
        description,
        perkId,
      ];
}
