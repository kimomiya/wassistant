import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'pedia_data_dive_bomber_model.g.dart';

@JsonSerializable()
class PediaDataDiveBomber extends Equatable {
  PediaDataDiveBomber({
    this.bombBulletMass,
    this.bombBurnProbability,
    this.bombDamage,
    this.bombName,
    this.cruiseSpeed,
    this.diveBomberId,
    this.diveBomberIdStr,
    this.gunnerDamage,
    this.maxDamage,
    this.maxHealth,
    this.name,
    this.planeLevel,
    this.prepareTime,
    this.squadrons,
    this.accuracy,
    this.countInSquadron,
  });
  // Bomb weight
  @JsonKey(name: 'bomb_bullet_mass')
  final num bombBulletMass;
  // Chance of Fire on target caused by bomb (%)
  @JsonKey(name: 'bomb_burn_probability')
  final num bombBurnProbability;
  // Maximum bomb damage
  @JsonKey(name: 'bomb_damage')
  final num bombDamage;
  // Bomb name
  @JsonKey(name: 'bomb_name')
  final String bombName;
  // Cruise Speed (knots)
  @JsonKey(name: 'cruise_speed')
  final num cruiseSpeed;
  // Dive bombers' ID
  @JsonKey(name: 'dive_bomber_id')
  final num diveBomberId;
  // Dive bombers string ID
  @JsonKey(name: 'dive_bomber_id_str')
  final String diveBomberIdStr;
  // Average damage per rear gunner of a dive bomber per second
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
  // Dive bomber tier
  @JsonKey(name: 'plane_level')
  final num planeLevel;
  // Time of preparation for takeoff (sec)
  @JsonKey(name: 'prepare_time')
  final num prepareTime;
  // Number of squadrons
  @JsonKey(name: 'squadrons')
  final num squadrons;
  // Accuracy
  @JsonKey(name: 'accuracy')
  final PediaDataDiveBomberAccuracy accuracy;
  // Number of aircraft in a squadron
  @JsonKey(name: 'count_in_squadron')
  final PediaDataDiveBomberCountInSquadron countInSquadron;

  static PediaDataDiveBomber fromJson(Map<String, dynamic> json) {
    return _$PediaDataDiveBomberFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaDataDiveBomber instance) {
    return _$PediaDataDiveBomberToJson(instance);
  }

  @override
  List<Object> get props => [
        bombBulletMass,
        bombBurnProbability,
        bombDamage,
        bombName,
        cruiseSpeed,
        diveBomberId,
        diveBomberIdStr,
        gunnerDamage,
        maxDamage,
        maxHealth,
        name,
        planeLevel,
        prepareTime,
        squadrons,
        accuracy,
        countInSquadron,
      ];
}

@JsonSerializable()
class PediaDataDiveBomberCountInSquadron extends Equatable {
  PediaDataDiveBomberCountInSquadron({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataDiveBomberCountInSquadron fromJson(
      Map<String, dynamic> json) {
    return _$PediaDataDiveBomberCountInSquadronFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataDiveBomberCountInSquadronToJson(this);
  }

  @override
  List<Object> get props => [
        max,
        min,
      ];
}

@JsonSerializable()
class PediaDataDiveBomberAccuracy extends Equatable {
  PediaDataDiveBomberAccuracy({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataDiveBomberAccuracy fromJson(Map<String, dynamic> json) {
    return _$PediaDataDiveBomberAccuracyFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataDiveBomberAccuracyToJson(this);
  }

  @override
  List<Object> get props => [
        max,
        min,
      ];
}
