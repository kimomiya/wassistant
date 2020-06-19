import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/profile/pedia_data_weaponry.dart';

import '../pedia_json_data.dart';

part 'pedia_data_weaponry_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataWeaponryModel extends PediaDataWeaponry
    implements PediaJsonData {
  const PediaDataWeaponryModel({
    @required this.aircraft,
    @required this.antiAircraft,
    @required this.artillery,
    @required this.torpedoes,
  });

  @override
  factory PediaDataWeaponryModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataWeaponryModelFromJson(json);
  }

  // Aircraft (%)
  @override
  final num aircraft;
  // AA Guns (%)
  @override
  final num antiAircraft;
  // Artillery (%)
  @override
  final num artillery;
  // Torpedoes (%)
  @override
  final num torpedoes;

  @override
  Map<String, dynamic> toJson() => _$PediaDataWeaponryModelToJson(this);
}
