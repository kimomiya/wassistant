import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/profile/pedia_data_mobility.dart';

import '../pedia_json_data.dart';

part 'pedia_data_mobility_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataMobilityModel extends PediaDataMobility
    implements PediaJsonData {
  const PediaDataMobilityModel({
    @required this.maxSpeed,
    @required this.rudderTime,
    @required this.total,
    @required this.turningRadius,
  });

  @override
  factory PediaDataMobilityModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataMobilityModelFromJson(json);
  }

  // Top Speed (knots)
  @override
  final num maxSpeed;
  // Rudder Shift Time (sec)
  @override
  final num rudderTime;
  // Maneuverability (%)
  @override
  final num total;
  // Turning Circle Radius (m)
  @override
  final num turningRadius;

  @override
  Map<String, dynamic> toJson() => _$PediaDataMobilityModelToJson(this);
}
