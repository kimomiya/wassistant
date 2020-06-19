import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PediaDataEngine extends Equatable {
  const PediaDataEngine({
    @required this.engineId,
    @required this.engineIdStr,
    @required this.maxSpeed,
  });
  final num engineId;
  final String engineIdStr;
  // Top Speed (knots)
  final num maxSpeed;

  @override
  List<Object> get props => [
        engineId,
        engineIdStr,
        maxSpeed,
      ];
}
