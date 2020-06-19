import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/profile/pedia_data_fighters.dart';

import '../pedia_json_data.dart';

part 'pedia_data_fighters_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataFightersModel extends PediaDataFighters
    implements PediaJsonData {
  const PediaDataFightersModel({
    @required this.avgDamage,
    @required this.cruiseSpeed,
    @required this.fightersId,
    @required this.fightersIdStr,
    @required this.gunnerDamage,
    @required this.maxAmmo,
    @required this.maxHealth,
    @required this.name,
    @required this.planeLevel,
    @required this.prepareTime,
    @required this.squadrons,
    @required this.countInSquadron,
  });

  @override
  factory PediaDataFightersModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataFightersModelFromJson(json);
  }

  // Average damage caused per second
  @override
  final num avgDamage;
  // Cruise Speed (knots)
  @override
  final num cruiseSpeed;
  // Fighters' ID
  @override
  final num fightersId;
  @override
  final String fightersIdStr;
  // Average damage per gunner of a fighter per second
  @override
  final num gunnerDamage;
  // Ammunition
  @override
  final num maxAmmo;
  // Survivability
  @override
  final num maxHealth;
  // Name of squadron
  @override
  final String name;
  // Fighter tier
  @override
  final num planeLevel;
  // Time of preparation for takeoff (sec)
  @override
  final num prepareTime;
  // Number of squadrons
  @override
  final num squadrons;
  // Number of squadrons
  @override
  final PediaDataFightersCountInSquadronModel countInSquadron;

  @override
  Map<String, dynamic> toJson() => _$PediaDataFightersModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataFightersCountInSquadronModel
    extends PediaDataFightersCountInSquadron implements PediaJsonData {
  const PediaDataFightersCountInSquadronModel({
    @required this.max,
    @required this.min,
  });

  @override
  factory PediaDataFightersCountInSquadronModel.fromJson(
      Map<String, dynamic> json) {
    return _$PediaDataFightersCountInSquadronModelFromJson(json);
  }

  @override
  final num max;
  @override
  final num min;

  @override
  Map<String, dynamic> toJson() =>
      _$PediaDataFightersCountInSquadronModelToJson(this);
}
