import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PediaDataWeaponry extends Equatable {
  const PediaDataWeaponry({
    @required this.aircraft,
    @required this.antiAircraft,
    @required this.artillery,
    @required this.torpedoes,
  });
  // Aircraft (%)
  final num aircraft;
  // AA Guns (%)
  final num antiAircraft;
  // Artillery (%)
  final num artillery;
  // Torpedoes (%)
  final num torpedoes;

  @override
  List<Object> get props => [
        aircraft,
        antiAircraft,
        artillery,
        torpedoes,
      ];
}
