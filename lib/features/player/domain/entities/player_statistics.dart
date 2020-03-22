import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PlayerStatistics extends Equatable {
  const PlayerStatistics({
    @required this.battles,
    @required this.distance,
  });

  /// Battles fought
  final int battles;

  /// Miles travelled
  final int distance;

  @override
  List<Object> get props => [battles, distance];
}
