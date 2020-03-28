import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'pedia_data_atbas_model.g.dart';

@JsonSerializable()
class PediaDataAtbas extends Equatable {
  PediaDataAtbas({
    @required this.distance,
    @required this.slots,
  });
  // Firing range
  @JsonKey(name: 'distance')
  final num distance;
  // Main gun slots
  @JsonKey(name: 'slots')
  final PediaDataAtbasSlots slots;

  static PediaDataAtbas fromJson(Map<String, dynamic> json) {
    return _$PediaDataAtbasFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaDataAtbas instance) {
    return _$PediaDataAtbasToJson(instance);
  }

  @override
  List<Object> get props => [
        distance,
        slots,
      ];
}

@JsonSerializable()
class PediaDataAtbasSlots extends Equatable {
  PediaDataAtbasSlots({
    @required this.bulletMass,
    @required this.bulletSpeed,
    @required this.burnProbability,
    @required this.damage,
    @required this.gunRate,
    @required this.name,
    @required this.shotDelay,
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
  // Rate of fire (rounds / min)
  @JsonKey(name: 'gun_rate')
  final num gunRate;
  @JsonKey(name: 'name')
  final String name;
  // Reload time (s)
  @JsonKey(name: 'shot_delay')
  final num shotDelay;
  @JsonKey(name: 'type')
  final String type;

  static PediaDataAtbasSlots fromJson(Map<String, dynamic> json) {
    return _$PediaDataAtbasSlotsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataAtbasSlotsToJson(this);
  }

  @override
  List<Object> get props => [
        bulletMass,
        bulletSpeed,
        burnProbability,
        damage,
        gunRate,
        name,
        shotDelay,
        type,
      ];
}
