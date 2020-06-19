import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PediaDataTorpedoBomber extends Equatable {
  const PediaDataTorpedoBomber({
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
  final num cruiseSpeed;
  // Average damage per rear gunner of a torpedo bomber per second
  final num gunnerDamage;
  // Maximum Bomb Damage
  final num maxDamage;
  // Survivability
  final num maxHealth;
  // Name of squadron
  final String name;
  // Torpedo bomber tier
  final num planeLevel;
  // Time of preparation for takeoff (sec)
  final num prepareTime;
  // Number of squadrons
  final num squadrons;
  final num torpedoBomberId;
  final String torpedoBomberIdStr;
  // Maximum torpedo damage
  final num torpedoDamage;
  // Firing range
  final num torpedoDistance;
  // Top Speed (knots)
  final num torpedoMaxSpeed;
  // Torpedo name
  final String torpedoName;
  // Number of aircraft in a squadron
  final PediaDataTorpedoBomberCountInSquadron countInSquadron;

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

class PediaDataTorpedoBomberCountInSquadron extends Equatable {
  const PediaDataTorpedoBomberCountInSquadron({
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
