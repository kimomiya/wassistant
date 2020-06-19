import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PediaDataConcealment extends Equatable {
  const PediaDataConcealment({
    @required this.detectDistanceByPlane,
    @required this.detectDistanceByShip,
    @required this.total,
  });
  // Air Detectability Range
  final num detectDistanceByPlane;
  // Surface Detectability Range
  final num detectDistanceByShip;
  // Concealment (%)
  final num total;

  @override
  List<Object> get props => [
        detectDistanceByPlane,
        detectDistanceByShip,
        total,
      ];
}
