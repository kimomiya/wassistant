import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PediaDataTorpedoes extends Equatable {
  const PediaDataTorpedoes({
    @required this.distance,
    @required this.maxDamage,
    @required this.reloadTime,
    @required this.rotationTime,
    @required this.torpedoName,
    @required this.torpedoSpeed,
    @required this.torpedoesId,
    @required this.torpedoesIdStr,
    @required this.visibilityDist,
    @required this.slots,
  });
  // Firing range
  final num distance;
  // Maximum Damage
  final num maxDamage;
  // Reload Time (sec)
  final num reloadTime;
  // 180 Degree Turn Time (sec)
  final num rotationTime;
  // Torpedo
  final String torpedoName;
  // Torpedo Speed (knots)
  final num torpedoSpeed;
  // Torpedo tubes' ID
  final num torpedoesId;
  final String torpedoesIdStr;
  // Torpedo range (km)
  final num visibilityDist;
  // Firing range
  final PediaDataTorpedoesSlots slots;

  @override
  List<Object> get props => [
        distance,
        maxDamage,
        reloadTime,
        rotationTime,
        torpedoName,
        torpedoSpeed,
        torpedoesId,
        torpedoesIdStr,
        visibilityDist,
        slots,
      ];
}

class PediaDataTorpedoesSlots extends Equatable {
  const PediaDataTorpedoesSlots({
    @required this.barrels,
    @required this.caliber,
    @required this.guns,
    @required this.name,
  });
  // Number of barrels per slot
  final num barrels;
  // Caliber
  final num caliber;
  // Number of main turrets
  final num guns;
  final String name;

  @override
  List<Object> get props => [
        barrels,
        caliber,
        guns,
        name,
      ];
}
