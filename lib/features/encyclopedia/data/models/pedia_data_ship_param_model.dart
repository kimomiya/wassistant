import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_json_data.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/ship_param.dart';

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

part 'pedia_data_ship_param_model.g.dart';

// @JsonSerializable()
// class PediaShipParamsModel extends PediaShipParams {
//   const PediaShipParamsModel({@required this.content, @required this.shipId});

//   @override
//   final PediaShipParamsContent content;
//   @override
//   final String shipId;

//   factory PediaShipParamsModel.fromJson(Map<String, dynamic> json) {
//     PediaShipParams params;
//     json.forEach((_shipId, _content) => {
//           params = PediaShipParams(
//               content: PediaShipParamsContent.fromJson(
//                   _content as Map<String, dynamic>),
//               shipId: _shipId)
//         });

//     return params;
//   }

//   static Map<String, dynamic> toJson(PediaShipParams instance) =>
//       <String, dynamic>{instance.shipId: instance.content.toJson()};
// }

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaShipParamModel extends PediaShipParam implements PediaJsonData {
  const PediaShipParamModel({
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

  @override
  factory PediaShipParamModel.fromJson(Map<String, dynamic> json) {
    return _$PediaShipParamsModelFromJson(json);
  }

  // Maximum battle tier for a random battle
  @override
  final num battleLevelRangeMax;
  // Minimum battle tier for a random battle
  @override
  final num battleLevelRangeMin;
  @override
  final num shipId;
  // Anti-aircraft guns. If the module is absent on the ship, field value is null.
  @override
  final PediaDataAntiAircraftModel antiAircraft;
  // Survivability of basic configuration
  @override
  final PediaDataArmourModel armour;
  // Main battery. If the module is absent on the ship, field value is null.
  @override
  final PediaDataArtilleryModel artillery;
  // Secondary armament. If the module is absent on the ship, field value is null.
  @override
  final PediaDataAtbasModel atbas;
  // Concealment of basic configuration
  @override
  final PediaDataConcealmentModel concealment;
  // Dive bombers. If the module is absent on the ship, field value is null.
  @override
  final PediaDataDiveBomberModel diveBomber;
  // Engine
  @override
  final PediaDataEngineModel engine;
  // Fighters. If the module is absent on the ship, field value is null.
  @override
  final PediaDataFightersModel fighters;
  // Gun Fire Control System. If the module is absent on the ship, field value is null.
  @override
  final PediaDataFireControlModel fireControl;
  // Flight Control. If the module is absent on the ship, field value is null.
  @override
  final PediaDataFlightControlModel flightControl;
  // Hull
  @override
  final PediaDataHullModel hull;
  // Maneuverability of basic configuration
  @override
  final PediaDataMobilityModel mobility;
  // Torpedo bombers. If the module is absent on the ship, field value is null.
  @override
  final PediaDataTorpedoBomberModel torpedoBomber;
  // Torpedo tubes. If the module is absent on the ship, field value is null.
  @override
  final PediaDataTorpedoesModel torpedoes;
  // Armament effectiveness of basic configuration
  @override
  final PediaDataWeaponryModel weaponry;

  @override
  Map<String, dynamic> toJson() => _$PediaShipParamsModelToJson(this);
}
