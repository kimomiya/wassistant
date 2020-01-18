import 'package:json_annotation/json_annotation.dart';

part 'player_statistics.g.dart';

@JsonSerializable()
class PlayerStatistics {
  PlayerStatistics({
    this.battles,
    this.distance,
  });

  factory PlayerStatistics.fromJson(Map<String, dynamic> json) {
    return _$PlayerStatisticsFromJson(json);
  }

  /// Battles fought
  final int battles;

  /// Miles travelled
  final int distance;

  Map<String, dynamic> toJson() => _$PlayerStatisticsToJson(this);
}
