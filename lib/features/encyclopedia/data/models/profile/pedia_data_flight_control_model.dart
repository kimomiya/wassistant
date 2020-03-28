import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'pedia_data_flight_control_model.g.dart';

@JsonSerializable()
class PediaDataFlightControl extends Equatable {
  PediaDataFlightControl({
    @required this.bomberSquadrons,
    @required this.fighterSquadrons,
    @required this.flightControlId,
    @required this.flightControlIdStr,
    @required this.torpedoSquadrons,
  });
  // Number of bomber squadrons
  @JsonKey(name: 'bomber_squadrons')
  final num bomberSquadrons;
  // Number of fighter squadrons
  @JsonKey(name: 'fighter_squadrons')
  final num fighterSquadrons;
  @JsonKey(name: 'flight_control_id')
  final num flightControlId;
  @JsonKey(name: 'flight_control_id_str')
  final String flightControlIdStr;
  // Number of torpedo bomber squadrons
  @JsonKey(name: 'torpedo_squadrons')
  final num torpedoSquadrons;

  static PediaDataFlightControl fromJson(Map<String, dynamic> json) {
    return _$PediaDataFlightControlFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaDataFlightControl instance) {
    return _$PediaDataFlightControlToJson(instance);
  }

  @override
  List<Object> get props => [
        bomberSquadrons,
        fighterSquadrons,
        flightControlId,
        flightControlIdStr,
        torpedoSquadrons,
      ];
}
