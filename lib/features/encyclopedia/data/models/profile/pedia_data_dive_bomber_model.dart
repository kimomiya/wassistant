import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/profile/pedia_data_dive_bomber.dart';

import '../pedia_json_data.dart';

part 'pedia_data_dive_bomber_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataDiveBomberModel extends PediaDataDiveBomber
    implements PediaJsonData {
  const PediaDataDiveBomberModel({
    this.bombBulletMass,
    this.bombBurnProbability,
    this.bombDamage,
    this.bombName,
    this.cruiseSpeed,
    this.diveBomberId,
    this.diveBomberIdStr,
    this.gunnerDamage,
    this.maxDamage,
    this.maxHealth,
    this.name,
    this.planeLevel,
    this.prepareTime,
    this.squadrons,
    this.accuracy,
    this.countInSquadron,
  });

  @override
  factory PediaDataDiveBomberModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataDiveBomberModelFromJson(json);
  }

  // Bomb weight
  @override
  final num bombBulletMass;
  // Chance of Fire on target caused by bomb (%)
  @override
  final num bombBurnProbability;
  // Maximum bomb damage
  @override
  final num bombDamage;
  // Bomb name
  @override
  final String bombName;
  // Cruise Speed (knots)
  @override
  final num cruiseSpeed;
  // Dive bombers' ID
  @override
  final num diveBomberId;
  // Dive bombers string ID
  @override
  final String diveBomberIdStr;
  // Average damage per rear gunner of a dive bomber per second
  @override
  final num gunnerDamage;
  // Maximum Bomb Damage
  @override
  final num maxDamage;
  // Survivability
  @override
  final num maxHealth;
  // Name of squadron
  @override
  final String name;
  // Dive bomber tier
  @override
  final num planeLevel;
  // Time of preparation for takeoff (sec)
  @override
  final num prepareTime;
  // Number of squadrons
  @override
  final num squadrons;
  // Accuracy
  @override
  final PediaDataDiveBomberAccuracyModel accuracy;
  // Number of aircraft in a squadron
  @override
  final PediaDataDiveBomberCountInSquadronModel countInSquadron;

  @override
  Map<String, dynamic> toJson() => _$PediaDataDiveBomberModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataDiveBomberCountInSquadronModel
    extends PediaDataDiveBomberCountInSquadron implements PediaJsonData {
  const PediaDataDiveBomberCountInSquadronModel({
    @required this.max,
    @required this.min,
  });

  @override
  factory PediaDataDiveBomberCountInSquadronModel.fromJson(
      Map<String, dynamic> json) {
    return _$PediaDataDiveBomberCountInSquadronModelFromJson(json);
  }

  @override
  final num max;
  @override
  final num min;

  @override
  Map<String, dynamic> toJson() =>
      _$PediaDataDiveBomberCountInSquadronModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataDiveBomberAccuracyModel extends PediaDataDiveBomberAccuracy
    implements PediaJsonData {
  const PediaDataDiveBomberAccuracyModel({
    @required this.max,
    @required this.min,
  });

  @override
  factory PediaDataDiveBomberAccuracyModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataDiveBomberAccuracyModelFromJson(json);
  }

  @override
  final num max;
  @override
  final num min;

  @override
  Map<String, dynamic> toJson() =>
      _$PediaDataDiveBomberAccuracyModelToJson(this);
}
