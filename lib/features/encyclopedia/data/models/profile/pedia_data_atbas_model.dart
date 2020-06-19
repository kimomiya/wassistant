import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/profile/pedia_data_atbas.dart';

import '../pedia_json_data.dart';

part 'pedia_data_atbas_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataAtbasModel extends PediaDataAtbas implements PediaJsonData {
  const PediaDataAtbasModel({
    @required this.distance,
    @required this.slots,
  });

  @override
  factory PediaDataAtbasModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataAtbasModelFromJson(json);
  }

  // Firing range
  @override
  final num distance;
  // Main gun slots
  @override
  final PediaDataAtbasSlotsModel slots;

  @override
  Map<String, dynamic> toJson() => _$PediaDataAtbasModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataAtbasSlotsModel extends PediaDataAtbasSlots
    implements PediaJsonData {
  const PediaDataAtbasSlotsModel({
    @required this.bulletMass,
    @required this.bulletSpeed,
    @required this.burnProbability,
    @required this.damage,
    @required this.gunRate,
    @required this.name,
    @required this.shotDelay,
    @required this.type,
  });

  @override
  factory PediaDataAtbasSlotsModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataAtbasSlotsModelFromJson(json);
  }

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
  // Rate of fire (rounds / min)
  @override
  final num gunRate;
  @override
  final String name;
  // Reload time (s)
  @override
  final num shotDelay;
  @override
  final String type;

  @override
  Map<String, dynamic> toJson() => _$PediaDataAtbasSlotsModelToJson(this);
}
