import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/player_statistics.dart';

part 'player_statistics_model.g.dart';

@JsonSerializable()
class PlayerStatisticsModel extends PlayerStatistics {
  const PlayerStatisticsModel({
    @required this.battles,
    @required this.distance,
  });

  factory PlayerStatisticsModel.fromJson(Map<String, dynamic> json) {
    return _$PlayerStatisticsModelFromJson(json);
  }

  /// Battles fought
  @override
  final int battles;

  /// Miles travelled
  @override
  final int distance;

  Map<String, dynamic> toJson() => _$PlayerStatisticsModelToJson(this);
}
