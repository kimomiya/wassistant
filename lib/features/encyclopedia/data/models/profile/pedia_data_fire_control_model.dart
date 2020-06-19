import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/profile/pedia_data_fire_control.dart';

import '../pedia_json_data.dart';

part 'pedia_data_fire_control_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataFireControlModel extends PediaDataFireControl
    implements PediaJsonData {
  const PediaDataFireControlModel({
    @required this.distance,
    @required this.distanceIncrease,
    @required this.fireControlId,
    @required this.fireControlIdStr,
  });

  @override
  factory PediaDataFireControlModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataFireControlModelFromJson(json);
  }

  // Firing range
  @override
  final num distance;
  // Firing Range extension (%)
  @override
  final num distanceIncrease;
  // ID of Gun Fire Control System
  @override
  final num fireControlId;
  @override
  final String fireControlIdStr;

  @override
  Map<String, dynamic> toJson() => _$PediaDataFireControlModelToJson(this);
}
