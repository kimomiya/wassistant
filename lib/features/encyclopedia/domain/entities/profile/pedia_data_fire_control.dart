import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PediaDataFireControl extends Equatable {
  const PediaDataFireControl({
    @required this.distance,
    @required this.distanceIncrease,
    @required this.fireControlId,
    @required this.fireControlIdStr,
  });
  // Firing range
  final num distance;
  // Firing Range extension (%)
  final num distanceIncrease;
  // ID of Gun Fire Control System
  final num fireControlId;
  final String fireControlIdStr;

  @override
  List<Object> get props => [
        distance,
        distanceIncrease,
        fireControlId,
        fireControlIdStr,
      ];
}
