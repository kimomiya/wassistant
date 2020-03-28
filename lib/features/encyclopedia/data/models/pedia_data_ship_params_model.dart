import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/pedia_data.dart';

import 'profile/pedia_data_anti_aircraft_model.dart';
import 'profile/pedia_data_armour_model.dart';
import 'profile/pedia_data_artillery_model.dart';
import 'profile/pedia_data_atbas_model.dart';
import 'profile/pedia_data_concealment_model.dart';
import 'profile/pedia_data_dive_bomber_model.dart';
import 'profile/pedia_data_engine_model.dart';
import 'profile/pedia_data_fighters_model.dart';
import 'profile/pedia_data_fire_control_model.dart';
import 'profile/pedia_data_flight_control_model.dart';
import 'profile/pedia_data_hull_model.dart';
import 'profile/pedia_data_mobility_model.dart';
import 'profile/pedia_data_torpedo_bomber_model.dart';
import 'profile/pedia_data_torpedoes_model.dart';
import 'profile/pedia_data_weaponry_model.dart';

part 'pedia_data_ship_params_model.g.dart';

class PediaShipParams extends PediaDataInterface {
  PediaShipParams({@required this.content, @required this.shipId});
  final PediaShipParamsContent content;
  final String shipId;

  static PediaShipParams fromJson(Map<String, dynamic> json) {
    PediaShipParams params;
    json.forEach((_shipId, _content) => {
          params = PediaShipParams(
              content: PediaShipParamsContent.fromJson(
                  _content as Map<String, dynamic>),
              shipId: _shipId)
        });

    return params;
  }

  static Map<String, dynamic> toJson(PediaShipParams instance) =>
      <String, dynamic>{instance.shipId: instance.content.toJson()};
}

@JsonSerializable()
class PediaShipParamsContent extends Equatable {
  PediaShipParamsContent({
    @required this.battleLevelRangeMax,
    @required this.battleLevelRangeMin,
    @required this.shipId,
    this.antiAircraft,
    @required this.armour,
    this.artillery,
    this.atbas,
    @required this.concealment,
    this.diveBomber,
    @required this.engine,
    this.fighters,
    this.fireControl,
    this.flightControl,
    @required this.hull,
    @required this.mobility,
    this.torpedoBomber,
    this.torpedoes,
    @required this.weaponry,
  });

  // Maximum battle tier for a random battle
  @JsonKey(name: 'battle_level_range_max')
  final num battleLevelRangeMax;
  // Minimum battle tier for a random battle
  @JsonKey(name: 'battle_level_range_min')
  final num battleLevelRangeMin;
  @JsonKey(name: 'ship_id')
  final num shipId;
  // Anti-aircraft guns. If the module is absent on the ship, field value is null.
  @JsonKey(name: 'anti_aircraft')
  final PediaDataAntiAircraft antiAircraft;
  // Survivability of basic configuration
  @JsonKey(name: 'armour')
  final PediaDataArmour armour;
  // Main battery. If the module is absent on the ship, field value is null.
  @JsonKey(name: 'artillery')
  final PediaDataArtillery artillery;
  // Secondary armament. If the module is absent on the ship, field value is null.
  @JsonKey(name: 'atbas')
  final PediaDataAtbas atbas;
  // Concealment of basic configuration
  @JsonKey(name: 'concealment')
  final PediaDataConcealment concealment;
  // Dive bombers. If the module is absent on the ship, field value is null.
  @JsonKey(name: 'dive_bomber')
  final PediaDataDiveBomber diveBomber;
  // Engine
  @JsonKey(name: 'engine')
  final PediaDataEngine engine;
  // Fighters. If the module is absent on the ship, field value is null.
  @JsonKey(name: 'fighters')
  final PediaDataFighters fighters;
  // Gun Fire Control System. If the module is absent on the ship, field value is null.
  @JsonKey(name: 'fire_control')
  final PediaDataFireControl fireControl;
  // Flight Control. If the module is absent on the ship, field value is null.
  @JsonKey(name: 'flight_control')
  final PediaDataFlightControl flightControl;
  // Hull
  @JsonKey(name: 'hull')
  final PediaDataHull hull;
  // Maneuverability of basic configuration
  @JsonKey(name: 'mobility')
  final PediaDataMobility mobility;
  // Torpedo bombers. If the module is absent on the ship, field value is null.
  @JsonKey(name: 'torpedo_bomber')
  final PediaDataTorpedoBomber torpedoBomber;
  // Torpedo tubes. If the module is absent on the ship, field value is null.
  @JsonKey(name: 'torpedoes')
  final PediaDataTorpedoes torpedoes;
  // Armament effectiveness of basic configuration
  @JsonKey(name: 'weaponry')
  final PediaDataWeaponry weaponry;

  static PediaShipParamsContent fromJson(Map<String, dynamic> json) {
    if (json != null) return _$PediaShipParamsContentFromJson(json);
    return null;
  }

  Map<String, dynamic> toJson() {
    return _$PediaShipParamsContentToJson(this);
  }

  @override
  List<Object> get props => [
        battleLevelRangeMax,
        battleLevelRangeMin,
        shipId,
        antiAircraft,
        armour,
        artillery,
        atbas,
        concealment,
        diveBomber,
        engine,
        fighters,
        fireControl,
        flightControl,
        hull,
        mobility,
        torpedoBomber,
        torpedoes,
        weaponry,
      ];
}
