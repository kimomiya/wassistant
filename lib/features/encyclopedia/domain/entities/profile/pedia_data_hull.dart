import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PediaDataHull extends Equatable {
  const PediaDataHull({
    @required this.antiAircraftBarrels,
    @required this.artilleryBarrels,
    @required this.atbaBarrels,
    @required this.health,
    @required this.hullId,
    @required this.hullIdStr,
    @required this.planesAmount,
    @required this.torpedoesBarrels,
    @required this.range,
  });
  // AA Mounts
  final num antiAircraftBarrels;
  // Number of main turrets
  final num artilleryBarrels;
  // Secondary gun turrets
  final num atbaBarrels;
  // Hit points
  final num health;
  final num hullId;
  final String hullIdStr;
  // Hangar capacity
  final num planesAmount;
  // Torpedo tubes
  final num torpedoesBarrels;
  // Armor (mm)
  final PediaDataHullRange range;

  @override
  List<Object> get props => [
        antiAircraftBarrels,
        artilleryBarrels,
        atbaBarrels,
        health,
        hullId,
        hullIdStr,
        planesAmount,
        torpedoesBarrels,
        range,
      ];
}

class PediaDataHullRange extends Equatable {
  const PediaDataHullRange({
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
