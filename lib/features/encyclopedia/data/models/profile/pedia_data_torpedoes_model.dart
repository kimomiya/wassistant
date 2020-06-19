import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/profile/pedia_data_torpedoes.dart';

import '../pedia_json_data.dart';

part 'pedia_data_torpedoes_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataTorpedoesModel extends PediaDataTorpedoes
    implements PediaJsonData {
  const PediaDataTorpedoesModel({
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

  @override
  factory PediaDataTorpedoesModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataTorpedoesModelFromJson(json);
  }

  // Firing range
  @override
  final num distance;
  // Maximum Damage
  @override
  final num maxDamage;
  // Reload Time (sec)
  @override
  final num reloadTime;
  // 180 Degree Turn Time (sec)
  @override
  final num rotationTime;
  // Torpedo
  @override
  final String torpedoName;
  // Torpedo Speed (knots)
  @override
  final num torpedoSpeed;
  // Torpedo tubes' ID
  @override
  final num torpedoesId;
  @override
  final String torpedoesIdStr;
  // Torpedo range (km)
  @override
  final num visibilityDist;
  // Firing range
  @override
  final PediaDataTorpedoesSlotsModel slots;

  @override
  Map<String, dynamic> toJson() => _$PediaDataTorpedoesModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataTorpedoesSlotsModel extends PediaDataTorpedoesSlots
    implements PediaJsonData {
  const PediaDataTorpedoesSlotsModel({
    @required this.barrels,
    @required this.caliber,
    @required this.guns,
    @required this.name,
  });

  @override
  factory PediaDataTorpedoesSlotsModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataTorpedoesSlotsModelFromJson(json);
  }

  // Number of barrels per slot
  @override
  final num barrels;
  // Caliber
  @override
  final num caliber;
  // Number of main turrets
  @override
  final num guns;
  @override
  final String name;

  @override
  Map<String, dynamic> toJson() => _$PediaDataTorpedoesSlotsModelToJson(this);
}
