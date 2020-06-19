import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PediaDataFighters extends Equatable {
  const PediaDataFighters({
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
  final num avgDamage;
  // Cruise Speed (knots)
  final num cruiseSpeed;
  // Fighters' ID
  final num fightersId;
  final String fightersIdStr;
  // Average damage per gunner of a fighter per second
  final num gunnerDamage;
  // Ammunition
  final num maxAmmo;
  // Survivability
  final num maxHealth;
  // Name of squadron
  final String name;
  // Fighter tier
  final num planeLevel;
  // Time of preparation for takeoff (sec)
  final num prepareTime;
  // Number of squadrons
  final num squadrons;
  // Number of squadrons
  final PediaDataFightersCountInSquadron countInSquadron;

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

class PediaDataFightersCountInSquadron extends Equatable {
  const PediaDataFightersCountInSquadron({
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
