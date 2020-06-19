import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/profile/pedia_data_engine.dart';

import '../pedia_json_data.dart';

part 'pedia_data_engine_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataEngineModel extends PediaDataEngine implements PediaJsonData {
  const PediaDataEngineModel({
    @required this.engineId,
    @required this.engineIdStr,
    @required this.maxSpeed,
  });

  @override
  factory PediaDataEngineModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataEngineModelFromJson(json);
  }

  @override
  final num engineId;
  @override
  final String engineIdStr;
  // Top Speed (knots)
  @override
  final num maxSpeed;

  @override
  Map<String, dynamic> toJson() => _$PediaDataEngineModelToJson(this);
}
