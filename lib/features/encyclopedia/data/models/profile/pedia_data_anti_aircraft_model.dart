import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/profile/pedia_data_anti_aircraft.dart';

import '../pedia_json_data.dart';

part 'pedia_data_anti_aircraft_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataAntiAircraftModel extends PediaDataAntiAircraft
    implements PediaJsonData {
  const PediaDataAntiAircraftModel({
    @required this.defense,
    @required this.slots,
  });

  @override
  factory PediaDataAntiAircraftModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataAntiAircraftModelFromJson(json);
  }

  // Anti-aircraft effectiveness
  @override
  final num defense;
  // Gun slots
  @override
  final PediaDataAntiAircraftSlotsModel slots;

  @override
  Map<String, dynamic> toJson() => _$PediaDataAntiAircraftModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataAntiAircraftSlotsModel extends PediaDataAntiAircraftSlots
    implements PediaJsonData {
  const PediaDataAntiAircraftSlotsModel({
    @required this.avgDamage,
    @required this.caliber,
    @required this.distance,
    @required this.guns,
    @required this.name,
  });

  @override
  factory PediaDataAntiAircraftSlotsModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataAntiAircraftSlotsModelFromJson(json);
  }

  // Average damage per second
  final num avgDamage;
  // Caliber
  final num caliber;
  // Firing range (km)
  final num distance;
  // Number of guns
  final num guns;
  // Gun name
  final String name;

  @override
  Map<String, dynamic> toJson() =>
      _$PediaDataAntiAircraftSlotsModelToJson(this);
}
