import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PediaCommanderSkill extends Equatable {
  const PediaCommanderSkill({
    @required this.icon,
    @required this.name,
    @required this.tier,
    @required this.typeId,
    @required this.typeName,
    @required this.perks,
  });

  // URL to skill icon
  final String icon;
  // Name
  final String name;
  // Tier
  final num tier;
  // Skill type ID
  final num typeId;
  // Skill type name
  final String typeName;
  // Skills
  final PediaCommanderSkillsPerks perks;

  @override
  List<Object> get props => [icon, name, tier, typeId, typeName, perks];
}

class PediaCommanderSkillsPerks extends Equatable {
  const PediaCommanderSkillsPerks({
    this.description,
    this.perkId,
  });

  final String description;
  final num perkId;

  @override
  List<Object> get props => [
        description,
        perkId,
      ];
}
