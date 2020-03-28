import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'pedia_data_anti_aircraft_model.g.dart';

@JsonSerializable()
class PediaDataAntiAircraft extends Equatable {
  PediaDataAntiAircraft({
    @required this.defense,
    @required this.slots,
  });
  // Anti-aircraft effectiveness
  @JsonKey(name: 'defense')
  final num defense;
  // Gun slots
  @JsonKey(name: 'slots')
  final PediaDataAntiAircraftSlots slots;

  static PediaDataAntiAircraft fromJson(Map<String, dynamic> json) {
    return _$PediaDataAntiAircraftFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaDataAntiAircraft instance) {
    return _$PediaDataAntiAircraftToJson(instance);
  }

  @override
  List<Object> get props => [
        defense,
        slots,
      ];
}

@JsonSerializable()
class PediaDataAntiAircraftSlots extends Equatable {
  PediaDataAntiAircraftSlots({
    @required this.avgDamage,
    @required this.caliber,
    @required this.distance,
    @required this.guns,
    @required this.name,
  });
  // Average damage per second
  @JsonKey(name: 'avg_damage')
  final num avgDamage;
  // Caliber
  @JsonKey(name: 'caliber')
  final num caliber;
  // Firing range (km)
  @JsonKey(name: 'distance')
  final num distance;
  // Number of guns
  @JsonKey(name: 'guns')
  final num guns;
  // Gun name
  @JsonKey(name: 'name')
  final String name;

  static PediaDataAntiAircraftSlots fromJson(Map<String, dynamic> json) {
    return _$PediaDataAntiAircraftSlotsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataAntiAircraftSlotsToJson(this);
  }

  @override
  List<Object> get props => [
        avgDamage,
        caliber,
        distance,
        guns,
        name,
      ];
}
