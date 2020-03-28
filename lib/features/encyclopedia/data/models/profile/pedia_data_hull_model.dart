import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'pedia_data_hull_model.g.dart';

@JsonSerializable()
class PediaDataHull extends Equatable {
  PediaDataHull({
    @required this.antiAircraftBarrels,
    @required this.artilleryBarrels,
    @required this.atbaBarrels,
    @required this.health,
    @required this.hullId,
    @required this.hullIdStr,
    @required this.planesAmount,
    @required this.torpedoesBarrels,
    @required this.range,
  });
  // AA Mounts
  @JsonKey(name: 'anti_aircraft_barrels')
  final num antiAircraftBarrels;
  // Number of main turrets
  @JsonKey(name: 'artillery_barrels')
  final num artilleryBarrels;
  // Secondary gun turrets
  @JsonKey(name: 'atba_barrels')
  final num atbaBarrels;
  // Hit points
  @JsonKey(name: 'health')
  final num health;
  @JsonKey(name: 'hull_id')
  final num hullId;
  @JsonKey(name: 'hull_id_str')
  final String hullIdStr;
  // Hangar capacity
  @JsonKey(name: 'planes_amount')
  final num planesAmount;
  // Torpedo tubes
  @JsonKey(name: 'torpedoes_barrels')
  final num torpedoesBarrels;
  // Armor (mm)
  @JsonKey(name: 'range')
  final PediaDataHullRange range;

  static PediaDataHull fromJson(Map<String, dynamic> json) {
    return _$PediaDataHullFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaDataHull instance) {
    return _$PediaDataHullToJson(instance);
  }

  @override
  List<Object> get props => [
        antiAircraftBarrels,
        artilleryBarrels,
        atbaBarrels,
        health,
        hullId,
        hullIdStr,
        planesAmount,
        torpedoesBarrels,
        range,
      ];
}

@JsonSerializable()
class PediaDataHullRange extends Equatable {
  PediaDataHullRange({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataHullRange fromJson(Map<String, dynamic> json) {
    return _$PediaDataHullRangeFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataHullRangeToJson(this);
  }

  @override
  List<Object> get props => [
        max,
        min,
      ];
}
