import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/profile/pedia_data_concealment.dart';

import '../pedia_json_data.dart';

part 'pedia_data_concealment_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataConcealmentModel extends PediaDataConcealment
    implements PediaJsonData {
  const PediaDataConcealmentModel({
    @required this.detectDistanceByPlane,
    @required this.detectDistanceByShip,
    @required this.total,
  });

  @override
  factory PediaDataConcealmentModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataConcealmentModelFromJson(json);
  }

  // Air Detectability Range
  @override
  final num detectDistanceByPlane;
  // Surface Detectability Range
  @override
  final num detectDistanceByShip;
  // Concealment (%)
  @override
  final num total;

  @override
  Map<String, dynamic> toJson() => _$PediaDataConcealmentModelToJson(this);
}
