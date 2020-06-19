import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PediaDataAntiAircraft extends Equatable {
  const PediaDataAntiAircraft({
    @required this.defense,
    @required this.slots,
  });
  // Anti-aircraft effectiveness
  final num defense;
  // Gun slots
  final PediaDataAntiAircraftSlots slots;

  @override
  List<Object> get props => [
        defense,
        slots,
      ];
}

class PediaDataAntiAircraftSlots extends Equatable {
  const PediaDataAntiAircraftSlots({
    @required this.avgDamage,
    @required this.caliber,
    @required this.distance,
    @required this.guns,
    @required this.name,
  });
  // Average damage per second
  final num avgDamage;
  // Caliber
  final num caliber;
  // Firing range (km)
  final num distance;
  // Number of guns
  final num guns;
  // Gun name
  final String name;

  @override
  List<Object> get props => [
        avgDamage,
        caliber,
        distance,
        guns,
        name,
      ];
}
