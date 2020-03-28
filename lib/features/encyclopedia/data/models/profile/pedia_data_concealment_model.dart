import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'pedia_data_concealment_model.g.dart';

@JsonSerializable()
class PediaDataConcealment extends Equatable {
  PediaDataConcealment({
    @required this.detectDistanceByPlane,
    @required this.detectDistanceByShip,
    @required this.total,
  });
  // Air Detectability Range
  @JsonKey(name: 'detect_distance_by_plane')
  final num detectDistanceByPlane;
  // Surface Detectability Range
  @JsonKey(name: 'detect_distance_by_ship')
  final num detectDistanceByShip;
  // Concealment (%)
  @JsonKey(name: 'total')
  final num total;

  static PediaDataConcealment fromJson(Map<String, dynamic> json) {
    return _$PediaDataConcealmentFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaDataConcealment instance) {
    return _$PediaDataConcealmentToJson(instance);
  }

  @override
  List<Object> get props => [
        detectDistanceByPlane,
        detectDistanceByShip,
        total,
      ];
}
