import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/profile/pedia_data_artillery.dart';

import '../pedia_json_data.dart';

part 'pedia_data_artillery_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataArtilleryModel extends PediaDataArtillery
    implements PediaJsonData {
  const PediaDataArtilleryModel({
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
  @override
  final num artilleryId;
  @override
  final String artilleryIdStr;
  // Firing range
  @override
  final num distance;
  // Rate of fire (rounds / min)
  @override
  final num gunRate;
  // Maximum dispersion (m)
  @override
  final num maxDispersion;
  // 180 Degree Turn Time (sec)
  @override
  final num rotationTime;
  // Main battery reload time (s)
  @override
  final num shotDelay;
  // Shells
  @override
  final PediaDataArtilleryShellsModel shells;
  // Main gun slots
  @override
  final PediaDataArtillerySlotsModel slots;

  @override
  factory PediaDataArtilleryModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataArtilleryModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$PediaDataArtilleryModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataArtillerySlotsModel extends PediaDataArtillerySlots
    implements PediaJsonData {
  const PediaDataArtillerySlotsModel({
    @required this.barrels,
    @required this.guns,
    @required this.name,
  });
  // Number of barrels per slot
  @override
  final num barrels;
  // Number of main turrets
  @override
  final num guns;
  @override
  final String name;

  @override
  factory PediaDataArtillerySlotsModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataArtillerySlotsModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$PediaDataArtillerySlotsModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataArtilleryShellsModel extends PediaDataArtilleryShells
    implements PediaJsonData {
  const PediaDataArtilleryShellsModel({
    @required this.bulletMass,
    @required this.bulletSpeed,
    @required this.burnProbability,
    @required this.damage,
    @required this.name,
    @required this.type,
  });
  // Shell weight
  @override
  final num bulletMass;
  // Shell speed
  @override
  final num bulletSpeed;
  // Chance of Fire on target caused by shell (%)
  @override
  final num burnProbability;
  // Maximum Damage
  @override
  final num damage;
  @override
  final String name;
  @override
  final String type;

  @override
  factory PediaDataArtilleryShellsModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataArtilleryShellsModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$PediaDataArtilleryShellsModelToJson(this);
}
