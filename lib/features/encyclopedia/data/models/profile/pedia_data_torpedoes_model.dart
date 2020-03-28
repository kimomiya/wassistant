import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'pedia_data_torpedoes_model.g.dart';

@JsonSerializable()
class PediaDataTorpedoes extends Equatable {
  PediaDataTorpedoes({
    @required this.distance,
    @required this.maxDamage,
    @required this.reloadTime,
    @required this.rotationTime,
    @required this.torpedoName,
    @required this.torpedoSpeed,
    @required this.torpedoesId,
    @required this.torpedoesIdStr,
    @required this.visibilityDist,
    @required this.slots,
  });
  // Firing range
  @JsonKey(name: 'distance')
  final num distance;
  // Maximum Damage
  @JsonKey(name: 'max_damage')
  final num maxDamage;
  // Reload Time (sec)
  @JsonKey(name: 'reload_time')
  final num reloadTime;
  // 180 Degree Turn Time (sec)
  @JsonKey(name: 'rotation_time')
  final num rotationTime;
  // Torpedo
  @JsonKey(name: 'torpedo_name')
  final String torpedoName;
  // Torpedo Speed (knots)
  @JsonKey(name: 'torpedo_speed')
  final num torpedoSpeed;
  // Torpedo tubes' ID
  @JsonKey(name: 'torpedoes_id')
  final num torpedoesId;
  @JsonKey(name: 'torpedoes_id_str')
  final String torpedoesIdStr;
  // Torpedo range (km)
  @JsonKey(name: 'visibility_dist')
  final num visibilityDist;
  // Firing range
  @JsonKey(name: 'slots')
  final PediaDataTorpedoesSlots slots;

  static PediaDataTorpedoes fromJson(Map<String, dynamic> json) {
    return _$PediaDataTorpedoesFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaDataTorpedoes instance) {
    return _$PediaDataTorpedoesToJson(instance);
  }

  @override
  List<Object> get props => [
        distance,
        maxDamage,
        reloadTime,
        rotationTime,
        torpedoName,
        torpedoSpeed,
        torpedoesId,
        torpedoesIdStr,
        visibilityDist,
        slots,
      ];
}

@JsonSerializable()
class PediaDataTorpedoesSlots extends Equatable {
  PediaDataTorpedoesSlots({
    @required this.barrels,
    @required this.caliber,
    @required this.guns,
    @required this.name,
  });
  // Number of barrels per slot
  @JsonKey(name: 'barrels')
  final num barrels;
  // Caliber
  @JsonKey(name: 'caliber')
  final num caliber;
  // Number of main turrets
  @JsonKey(name: 'guns')
  final num guns;
  @JsonKey(name: 'name')
  final String name;

  static PediaDataTorpedoesSlots fromJson(Map<String, dynamic> json) {
    return _$PediaDataTorpedoesSlotsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataTorpedoesSlotsToJson(this);
  }

  @override
  List<Object> get props => [
        barrels,
        caliber,
        guns,
        name,
      ];
}
