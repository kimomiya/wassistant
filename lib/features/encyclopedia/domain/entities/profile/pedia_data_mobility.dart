import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PediaDataMobility extends Equatable {
  const PediaDataMobility({
    @required this.maxSpeed,
    @required this.rudderTime,
    @required this.total,
    @required this.turningRadius,
  });
  // Top Speed (knots)
  final num maxSpeed;
  // Rudder Shift Time (sec)
  final num rudderTime;
  // Maneuverability (%)
  final num total;
  // Turning Circle Radius (m)
  final num turningRadius;

  @override
  List<Object> get props => [
        maxSpeed,
        rudderTime,
        total,
        turningRadius,
      ];
}
