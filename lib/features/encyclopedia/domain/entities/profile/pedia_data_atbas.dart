import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PediaDataAtbas extends Equatable {
  const PediaDataAtbas({
    @required this.distance,
    @required this.slots,
  });
  // Firing range
  final num distance;
  // Main gun slots
  final PediaDataAtbasSlots slots;

  @override
  List<Object> get props => [
        distance,
        slots,
      ];
}

class PediaDataAtbasSlots extends Equatable {
  const PediaDataAtbasSlots({
    @required this.bulletMass,
    @required this.bulletSpeed,
    @required this.burnProbability,
    @required this.damage,
    @required this.gunRate,
    @required this.name,
    @required this.shotDelay,
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
  // Rate of fire (rounds / min)
  final num gunRate;
  final String name;
  // Reload time (s)
  final num shotDelay;
  final String type;

  @override
  List<Object> get props => [
        bulletMass,
        bulletSpeed,
        burnProbability,
        damage,
        gunRate,
        name,
        shotDelay,
        type,
      ];
}
