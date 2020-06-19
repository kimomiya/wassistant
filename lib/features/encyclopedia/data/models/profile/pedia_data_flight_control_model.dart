import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/profile/pedia_data_flight_control.dart';

import '../pedia_json_data.dart';

part 'pedia_data_flight_control_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataFlightControlModel extends PediaDataFlightControl
    implements PediaJsonData {
  const PediaDataFlightControlModel({
    @required this.bomberSquadrons,
    @required this.fighterSquadrons,
    @required this.flightControlId,
    @required this.flightControlIdStr,
    @required this.torpedoSquadrons,
  });

  @override
  factory PediaDataFlightControlModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataFlightControlModelFromJson(json);
  }

  // Number of bomber squadrons
  @override
  final num bomberSquadrons;
  // Number of fighter squadrons
  @override
  final num fighterSquadrons;
  @override
  final num flightControlId;
  @override
  final String flightControlIdStr;
  // Number of torpedo bomber squadrons
  @override
  final num torpedoSquadrons;

  @override
  Map<String, dynamic> toJson() => _$PediaDataFlightControlModelToJson(this);
}
