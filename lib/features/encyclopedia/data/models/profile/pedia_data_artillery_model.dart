import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'pedia_data_artillery_model.g.dart';

@JsonSerializable()
class PediaDataArtillery extends Equatable {
  PediaDataArtillery({
    this.artilleryId,
    this.artilleryIdStr,
    this.distance,
    this.gunRate,
    this.maxDispersion,
    this.rotationTime,
    this.shotDelay,
    this.shells,
    this.slots,
  });
  // Gun ID
  @JsonKey(name: 'artillery_id')
  final num artilleryId;
  @JsonKey(name: 'artillery_id_str')
  final String artilleryIdStr;
  // Firing range
  @JsonKey(name: 'distance')
  final num distance;
  // Rate of fire (rounds / min)
  @JsonKey(name: 'gun_rate')
  final num gunRate;
  // Maximum dispersion (m)
  @JsonKey(name: 'max_dispersion')
  final num maxDispersion;
  // 180 Degree Turn Time (sec)
  @JsonKey(name: 'rotation_time')
  final num rotationTime;
  // Main battery reload time (s)
  @JsonKey(name: 'shot_delay')
  final num shotDelay;
  // Shells
  @JsonKey(name: 'shells')
  final PediaDataArtilleryShells shells;
  // Main gun slots
  @JsonKey(name: 'slots')
  final PediaDataArtillerySlots slots;

  static PediaDataArtillery fromJson(Map<String, dynamic> json) {
    return _$PediaDataArtilleryFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaDataArtillery instance) {
    return _$PediaDataArtilleryToJson(instance);
  }

  @override
  List<Object> get props => [
        artilleryId,
        artilleryIdStr,
        distance,
        gunRate,
        maxDispersion,
        rotationTime,
        shotDelay,
        shells,
        slots,
      ];
}

@JsonSerializable()
class PediaDataArtillerySlots extends Equatable {
  PediaDataArtillerySlots({
    @required this.barrels,
    @required this.guns,
    @required this.name,
  });
  // Number of barrels per slot
  @JsonKey(name: 'barrels')
  final num barrels;
  // Number of main turrets
  @JsonKey(name: 'guns')
  final num guns;
  @JsonKey(name: 'name')
  final String name;

  static PediaDataArtillerySlots fromJson(Map<String, dynamic> json) {
    return _$PediaDataArtillerySlotsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataArtillerySlotsToJson(this);
  }

  @override
  List<Object> get props => [
        barrels,
        guns,
        name,
      ];
}

@JsonSerializable()
class PediaDataArtilleryShells extends Equatable {
  PediaDataArtilleryShells({
    @required this.bulletMass,
    @required this.bulletSpeed,
    @required this.burnProbability,
    @required this.damage,
    @required this.name,
    @required this.type,
  });
  // Shell weight
  @JsonKey(name: 'bullet_mass')
  final num bulletMass;
  // Shell speed
  @JsonKey(name: 'bullet_speed')
  final num bulletSpeed;
  // Chance of Fire on target caused by shell (%)
  @JsonKey(name: 'burn_probability')
  final num burnProbability;
  // Maximum Damage
  @JsonKey(name: 'damage')
  final num damage;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'type')
  final String type;

  static PediaDataArtilleryShells fromJson(Map<String, dynamic> json) {
    return _$PediaDataArtilleryShellsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataArtilleryShellsToJson(this);
  }

  @override
  List<Object> get props => [
        bulletMass,
        bulletSpeed,
        burnProbability,
        damage,
        name,
        type,
      ];
}
