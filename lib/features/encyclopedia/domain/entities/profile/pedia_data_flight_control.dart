import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PediaDataFlightControl extends Equatable {
  const PediaDataFlightControl({
    @required this.bomberSquadrons,
    @required this.fighterSquadrons,
    @required this.flightControlId,
    @required this.flightControlIdStr,
    @required this.torpedoSquadrons,
  });
  // Number of bomber squadrons
  final num bomberSquadrons;
  // Number of fighter squadrons
  final num fighterSquadrons;
  final num flightControlId;
  final String flightControlIdStr;
  // Number of torpedo bomber squadrons
  final num torpedoSquadrons;

  @override
  List<Object> get props => [
        bomberSquadrons,
        fighterSquadrons,
        flightControlId,
        flightControlIdStr,
        torpedoSquadrons,
      ];
}
