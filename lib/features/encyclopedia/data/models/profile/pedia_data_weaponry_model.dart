import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'pedia_data_weaponry_model.g.dart';

@JsonSerializable()
class PediaDataWeaponry extends Equatable {
  PediaDataWeaponry({
    @required this.aircraft,
    @required this.antiAircraft,
    @required this.artillery,
    @required this.torpedoes,
  });
  // Aircraft (%)
  @JsonKey(name: 'aircraft')
  final num aircraft;
  // AA Guns (%)
  @JsonKey(name: 'anti_aircraft')
  final num antiAircraft;
  // Artillery (%)
  @JsonKey(name: 'artillery')
  final num artillery;
  // Torpedoes (%)
  @JsonKey(name: 'torpedoes')
  final num torpedoes;

  static PediaDataWeaponry fromJson(Map<String, dynamic> json) {
    return _$PediaDataWeaponryFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaDataWeaponry instance) {
    return _$PediaDataWeaponryToJson(instance);
  }

  @override
  List<Object> get props => [
        aircraft,
        antiAircraft,
        artillery,
        torpedoes,
      ];
}
