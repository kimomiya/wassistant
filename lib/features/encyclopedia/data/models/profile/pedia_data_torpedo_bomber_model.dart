import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/profile/pedia_data_torpedo_bomber.dart';

import '../pedia_json_data.dart';

part 'pedia_data_torpedo_bomber_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataTorpedoBomberModel extends PediaDataTorpedoBomber
    implements PediaJsonData {
  const PediaDataTorpedoBomberModel({
    @required this.cruiseSpeed,
    @required this.gunnerDamage,
    @required this.maxDamage,
    @required this.maxHealth,
    @required this.name,
    @required this.planeLevel,
    @required this.prepareTime,
    @required this.squadrons,
    @required this.torpedoBomberId,
    @required this.torpedoBomberIdStr,
    @required this.torpedoDamage,
    @required this.torpedoDistance,
    @required this.torpedoMaxSpeed,
    @required this.torpedoName,
    @required this.countInSquadron,
  });

  @override
  factory PediaDataTorpedoBomberModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataTorpedoBomberModelFromJson(json);
  }

  // Cruise Speed (knots)
  @override
  final num cruiseSpeed;
  // Average damage per rear gunner of a torpedo bomber per second
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
  // Torpedo bomber tier
  @override
  final num planeLevel;
  // Time of preparation for takeoff (sec)
  @override
  final num prepareTime;
  // Number of squadrons
  @override
  final num squadrons;
  @override
  final num torpedoBomberId;
  @override
  final String torpedoBomberIdStr;
  // Maximum torpedo damage
  @override
  final num torpedoDamage;
  // Firing range
  @override
  final num torpedoDistance;
  // Top Speed (knots)
  @override
  final num torpedoMaxSpeed;
  // Torpedo name
  @override
  final String torpedoName;
  // Number of aircraft in a squadron
  @override
  final PediaDataTorpedoBomberCountInSquadronModel countInSquadron;

  @override
  Map<String, dynamic> toJson() => _$PediaDataTorpedoBomberModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataTorpedoBomberCountInSquadronModel
    extends PediaDataTorpedoBomberCountInSquadron implements PediaJsonData {
  const PediaDataTorpedoBomberCountInSquadronModel({
    @required this.max,
    @required this.min,
  });

  @override
  factory PediaDataTorpedoBomberCountInSquadronModel.fromJson(
      Map<String, dynamic> json) {
    return _$PediaDataTorpedoBomberCountInSquadronModelFromJson(json);
  }

  @override
  final num max;
  @override
  final num min;

  @override
  Map<String, dynamic> toJson() =>
      _$PediaDataTorpedoBomberCountInSquadronModelToJson(this);
}
