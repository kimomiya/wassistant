import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'pedia_data_engine_model.g.dart';

@JsonSerializable()
class PediaDataEngine extends Equatable {
  PediaDataEngine({
    @required this.engineId,
    @required this.engineIdStr,
    @required this.maxSpeed,
  });
  @JsonKey(name: 'engine_id')
  final num engineId;
  @JsonKey(name: 'engine_id_str')
  final String engineIdStr;
  // Top Speed (knots)
  @JsonKey(name: 'max_speed')
  final num maxSpeed;

  static PediaDataEngine fromJson(Map<String, dynamic> json) {
    return _$PediaDataEngineFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaDataEngine instance) {
    return _$PediaDataEngineToJson(instance);
  }

  @override
  List<Object> get props => [
        engineId,
        engineIdStr,
        maxSpeed,
      ];
}
