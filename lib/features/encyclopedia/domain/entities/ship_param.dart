import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'profile/pedia_data_anti_aircraft.dart';
import 'profile/pedia_data_armour.dart';
import 'profile/pedia_data_artillery.dart';
import 'profile/pedia_data_atbas.dart';
import 'profile/pedia_data_concealment.dart';
import 'profile/pedia_data_dive_bomber.dart';
import 'profile/pedia_data_engine.dart';
import 'profile/pedia_data_fighters.dart';
import 'profile/pedia_data_fire_control.dart';
import 'profile/pedia_data_flight_control.dart';
import 'profile/pedia_data_hull.dart';
import 'profile/pedia_data_mobility.dart';
import 'profile/pedia_data_torpedo_bomber.dart';
import 'profile/pedia_data_torpedoes.dart';
import 'profile/pedia_data_weaponry.dart';

// class PediaShipParams extends Equatable {
//   const PediaShipParams({@required this.content, @required this.shipId});
//   final PediaShipParamsContent content;
//   final String shipId;

//   @override
//   List<Object> get props => [content, shipId];
// }

class PediaShipParam extends Equatable {
  const PediaShipParam({
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
  final num battleLevelRangeMax;
  // Minimum battle tier for a random battle
  final num battleLevelRangeMin;
  final num shipId;
  // Anti-aircraft guns. If the module is absent on the ship, field value is null.
  final PediaDataAntiAircraft antiAircraft;
  // Survivability of basic configuration
  final PediaDataArmour armour;
  // Main battery. If the module is absent on the ship, field value is null.
  final PediaDataArtillery artillery;
  // Secondary armament. If the module is absent on the ship, field value is null.
  final PediaDataAtbas atbas;
  // Concealment of basic configuration
  final PediaDataConcealment concealment;
  // Dive bombers. If the module is absent on the ship, field value is null.
  final PediaDataDiveBomber diveBomber;
  // Engine
  final PediaDataEngine engine;
  // Fighters. If the module is absent on the ship, field value is null.
  final PediaDataFighters fighters;
  // Gun Fire Control System. If the module is absent on the ship, field value is null.
  final PediaDataFireControl fireControl;
  // Flight Control. If the module is absent on the ship, field value is null.
  final PediaDataFlightControl flightControl;
  // Hull
  final PediaDataHull hull;
  // Maneuverability of basic configuration
  final PediaDataMobility mobility;
  // Torpedo bombers. If the module is absent on the ship, field value is null.
  final PediaDataTorpedoBomber torpedoBomber;
  // Torpedo tubes. If the module is absent on the ship, field value is null.
  final PediaDataTorpedoes torpedoes;
  // Armament effectiveness of basic configuration
  final PediaDataWeaponry weaponry;

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
