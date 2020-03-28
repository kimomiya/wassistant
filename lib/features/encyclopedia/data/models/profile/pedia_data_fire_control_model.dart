import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'pedia_data_fire_control_model.g.dart';

@JsonSerializable()
class PediaDataFireControl extends Equatable {
  PediaDataFireControl({
    @required this.distance,
    @required this.distanceIncrease,
    @required this.fireControlId,
    @required this.fireControlIdStr,
  });
  // Firing range
  @JsonKey(name: 'distance')
  final num distance;
  // Firing Range extension (%)
  @JsonKey(name: 'distance_increase')
  final num distanceIncrease;
  // ID of Gun Fire Control System
  @JsonKey(name: 'fire_control_id')
  final num fireControlId;
  @JsonKey(name: 'fire_control_id_str')
  final String fireControlIdStr;

  static PediaDataFireControl fromJson(Map<String, dynamic> json) {
    return _$PediaDataFireControlFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaDataFireControl instance) {
    return _$PediaDataFireControlToJson(instance);
  }

  @override
  List<Object> get props => [
        distance,
        distanceIncrease,
        fireControlId,
        fireControlIdStr,
      ];
}
