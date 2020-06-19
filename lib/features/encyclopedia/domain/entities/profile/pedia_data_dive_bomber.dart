import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PediaDataDiveBomber extends Equatable {
  const PediaDataDiveBomber({
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
  final num bombBulletMass;
  // Chance of Fire on target caused by bomb (%)
  final num bombBurnProbability;
  // Maximum bomb damage
  final num bombDamage;
  // Bomb name
  final String bombName;
  // Cruise Speed (knots)
  final num cruiseSpeed;
  // Dive bombers' ID
  final num diveBomberId;
  // Dive bombers string ID
  final String diveBomberIdStr;
  // Average damage per rear gunner of a dive bomber per second
  final num gunnerDamage;
  // Maximum Bomb Damage
  final num maxDamage;
  // Survivability
  final num maxHealth;
  // Name of squadron
  final String name;
  // Dive bomber tier
  final num planeLevel;
  // Time of preparation for takeoff (sec)
  final num prepareTime;
  // Number of squadrons
  final num squadrons;
  // Accuracy
  final PediaDataDiveBomberAccuracy accuracy;
  // Number of aircraft in a squadron
  final PediaDataDiveBomberCountInSquadron countInSquadron;

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

class PediaDataDiveBomberCountInSquadron extends Equatable {
  const PediaDataDiveBomberCountInSquadron({
    @required this.max,
    @required this.min,
  });
  final num max;
  final num min;

  @override
  List<Object> get props => [
        max,
        min,
      ];
}

class PediaDataDiveBomberAccuracy extends Equatable {
  const PediaDataDiveBomberAccuracy({
    @required this.max,
    @required this.min,
  });
  final num max;
  final num min;

  @override
  List<Object> get props => [
        max,
        min,
      ];
}
