import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'pedia_data_mobility_model.g.dart';

@JsonSerializable()
class PediaDataMobility extends Equatable {
  PediaDataMobility({
    @required this.maxSpeed,
    @required this.rudderTime,
    @required this.total,
    @required this.turningRadius,
  });
  // Top Speed (knots)
  @JsonKey(name: 'max_speed')
  final num maxSpeed;
  // Rudder Shift Time (sec)
  @JsonKey(name: 'rudder_time')
  final num rudderTime;
  // Maneuverability (%)
  @JsonKey(name: 'total')
  final num total;
  // Turning Circle Radius (m)
  @JsonKey(name: 'turning_radius')
  final num turningRadius;

  static PediaDataMobility fromJson(Map<String, dynamic> json) {
    return _$PediaDataMobilityFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaDataMobility instance) {
    return _$PediaDataMobilityToJson(instance);
  }

  @override
  List<Object> get props => [
        maxSpeed,
        rudderTime,
        total,
        turningRadius,
      ];
}
