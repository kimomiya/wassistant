import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PediaDataArtillery extends Equatable {
  const PediaDataArtillery({
    this.artilleryId,
    this.artilleryIdStr,
    this.distance,
    this.gunRate,
    this.maxDispersion,
    this.rotationTime,
    this.shotDelay,
    this.shells,
    this.slots,
  });
  // Gun ID
  final num artilleryId;
  final String artilleryIdStr;
  // Firing range
  final num distance;
  // Rate of fire (rounds / min)
  final num gunRate;
  // Maximum dispersion (m)
  final num maxDispersion;
  // 180 Degree Turn Time (sec)
  final num rotationTime;
  // Main battery reload time (s)
  final num shotDelay;
  // Shells
  final PediaDataArtilleryShells shells;
  // Main gun slots
  final PediaDataArtillerySlots slots;

  @override
  List<Object> get props => [
        artilleryId,
        artilleryIdStr,
        distance,
        gunRate,
        maxDispersion,
        rotationTime,
        shotDelay,
        shells,
        slots,
      ];
}

class PediaDataArtillerySlots extends Equatable {
  const PediaDataArtillerySlots({
    @required this.barrels,
    @required this.guns,
    @required this.name,
  });
  // Number of barrels per slot
  final num barrels;
  // Number of main turrets
  final num guns;
  final String name;

  @override
  List<Object> get props => [
        barrels,
        guns,
        name,
      ];
}

class PediaDataArtilleryShells extends Equatable {
  const PediaDataArtilleryShells({
    @required this.bulletMass,
    @required this.bulletSpeed,
    @required this.burnProbability,
    @required this.damage,
    @required this.name,
    @required this.type,
  });
  // Shell weight
  final num bulletMass;
  // Shell speed
  final num bulletSpeed;
  // Chance of Fire on target caused by shell (%)
  final num burnProbability;
  // Maximum Damage
  final num damage;
  final String name;
  final String type;

  @override
  List<Object> get props => [
        bulletMass,
        bulletSpeed,
        burnProbability,
        damage,
        name,
        type,
      ];
}
