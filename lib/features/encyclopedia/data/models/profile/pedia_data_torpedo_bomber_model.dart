import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'pedia_data_torpedo_bomber_model.g.dart';

@JsonSerializable()
class PediaDataTorpedoBomber extends Equatable {
  PediaDataTorpedoBomber({
    @required this.cruiseSpeed,
    @required this.gunnerDamage,
    @required this.maxDamage,
    @required this.maxHealth,
    @required this.name,
    @required this.planeLevel,
    @required this.prepareTime,
    @required this.squadrons,
    @required this.torpedoBomberId,
    @required this.torpedoBomberIdStr,
    @required this.torpedoDamage,
    @required this.torpedoDistance,
    @required this.torpedoMaxSpeed,
    @required this.torpedoName,
    @required this.countInSquadron,
  });
  // Cruise Speed (knots)
  @JsonKey(name: 'cruise_speed')
  final num cruiseSpeed;
  // Average damage per rear gunner of a torpedo bomber per second
  @JsonKey(name: 'gunner_damage')
  final num gunnerDamage;
  // Maximum Bomb Damage
  @JsonKey(name: 'max_damage')
  final num maxDamage;
  // Survivability
  @JsonKey(name: 'max_health')
  final num maxHealth;
  // Name of squadron
  @JsonKey(name: 'name')
  final String name;
  // Torpedo bomber tier
  @JsonKey(name: 'plane_level')
  final num planeLevel;
  // Time of preparation for takeoff (sec)
  @JsonKey(name: 'prepare_time')
  final num prepareTime;
  // Number of squadrons
  @JsonKey(name: 'squadrons')
  final num squadrons;
  @JsonKey(name: 'torpedo_bomber_id')
  final num torpedoBomberId;
  @JsonKey(name: 'torpedo_bomber_id_str')
  final String torpedoBomberIdStr;
  // Maximum torpedo damage
  @JsonKey(name: 'torpedo_damage')
  final num torpedoDamage;
  // Firing range
  @JsonKey(name: 'torpedo_distance')
  final num torpedoDistance;
  // Top Speed (knots)
  @JsonKey(name: 'torpedo_max_speed')
  final num torpedoMaxSpeed;
  // Torpedo name
  @JsonKey(name: 'torpedo_name')
  final String torpedoName;
  // Number of aircraft in a squadron
  @JsonKey(name: 'count_in_squadron')
  final PediaDataTorpedoBomberCountInSquadron countInSquadron;

  static PediaDataTorpedoBomber fromJson(Map<String, dynamic> json) {
    return _$PediaDataTorpedoBomberFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaDataTorpedoBomber instance) {
    return _$PediaDataTorpedoBomberToJson(instance);
  }

  @override
  List<Object> get props => [
        cruiseSpeed,
        gunnerDamage,
        maxDamage,
        maxHealth,
        name,
        planeLevel,
        prepareTime,
        squadrons,
        torpedoBomberId,
        torpedoBomberIdStr,
        torpedoDamage,
        torpedoDistance,
        torpedoMaxSpeed,
        torpedoName,
        countInSquadron,
      ];
}

@JsonSerializable()
class PediaDataTorpedoBomberCountInSquadron extends Equatable {
  PediaDataTorpedoBomberCountInSquadron({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataTorpedoBomberCountInSquadron fromJson(
      Map<String, dynamic> json) {
    return _$PediaDataTorpedoBomberCountInSquadronFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataTorpedoBomberCountInSquadronToJson(this);
  }

  @override
  List<Object> get props => [
        max,
        min,
      ];
}
