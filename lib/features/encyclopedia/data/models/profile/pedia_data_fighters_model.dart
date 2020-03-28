import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'pedia_data_fighters_model.g.dart';

@JsonSerializable()
class PediaDataFighters extends Equatable {
  PediaDataFighters({
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
  // Average damage caused per second
  @JsonKey(name: 'avg_damage')
  final num avgDamage;
  // Cruise Speed (knots)
  @JsonKey(name: 'cruise_speed')
  final num cruiseSpeed;
  // Fighters' ID
  @JsonKey(name: 'fighters_id')
  final num fightersId;
  @JsonKey(name: 'fighters_id_str')
  final String fightersIdStr;
  // Average damage per gunner of a fighter per second
  @JsonKey(name: 'gunner_damage')
  final num gunnerDamage;
  // Ammunition
  @JsonKey(name: 'max_ammo')
  final num maxAmmo;
  // Survivability
  @JsonKey(name: 'max_health')
  final num maxHealth;
  // Name of squadron
  @JsonKey(name: 'name')
  final String name;
  // Fighter tier
  @JsonKey(name: 'plane_level')
  final num planeLevel;
  // Time of preparation for takeoff (sec)
  @JsonKey(name: 'prepare_time')
  final num prepareTime;
  // Number of squadrons
  @JsonKey(name: 'squadrons')
  final num squadrons;
  // Number of squadrons
  @JsonKey(name: 'count_in_squadron')
  final PediaDataFightersCountInSquadron countInSquadron;

  static PediaDataFighters fromJson(Map<String, dynamic> json) {
    return _$PediaDataFightersFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaDataFighters instance) {
    return _$PediaDataFightersToJson(instance);
  }

  @override
  List<Object> get props => [
        avgDamage,
        cruiseSpeed,
        fightersId,
        fightersIdStr,
        gunnerDamage,
        maxAmmo,
        maxHealth,
        name,
        planeLevel,
        prepareTime,
        squadrons,
        countInSquadron,
      ];
}

@JsonSerializable()
class PediaDataFightersCountInSquadron extends Equatable {
  PediaDataFightersCountInSquadron({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataFightersCountInSquadron fromJson(Map<String, dynamic> json) {
    return _$PediaDataFightersCountInSquadronFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataFightersCountInSquadronToJson(this);
  }

  @override
  List<Object> get props => [
        max,
        min,
      ];
}
