import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/profile/pedia_data_hull.dart';

import '../pedia_json_data.dart';

part 'pedia_data_hull_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataHullModel extends PediaDataHull implements PediaJsonData {
  const PediaDataHullModel({
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

  @override
  factory PediaDataHullModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataHullModelFromJson(json);
  }

  // AA Mounts
  @override
  final num antiAircraftBarrels;
  // Number of main turrets
  @override
  final num artilleryBarrels;
  // Secondary gun turrets
  @override
  final num atbaBarrels;
  // Hit points
  @override
  final num health;
  @override
  final num hullId;
  @override
  final String hullIdStr;
  // Hangar capacity
  @override
  final num planesAmount;
  // Torpedo tubes
  @override
  final num torpedoesBarrels;
  // Armor (mm)
  @override
  final PediaDataHullRangeModel range;

  @override
  Map<String, dynamic> toJson() => _$PediaDataHullModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataHullRangeModel extends PediaDataHullRange
    implements PediaJsonData {
  const PediaDataHullRangeModel({
    @required this.max,
    @required this.min,
  });

  @override
  factory PediaDataHullRangeModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataHullRangeModelFromJson(json);
  }

  @override
  final num max;
  @override
  final num min;

  @override
  Map<String, dynamic> toJson() => _$PediaDataHullRangeModelToJson(this);
}
