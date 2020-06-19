import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'profile/pedia_data_artillery.dart';
import 'profile/pedia_data_dive_bomber.dart';
import 'profile/pedia_data_engine.dart';
import 'profile/pedia_data_fighters.dart';
import 'profile/pedia_data_fire_control.dart';
import 'profile/pedia_data_flight_control.dart';
import 'profile/pedia_data_hull.dart';
import 'profile/pedia_data_torpedo_bomber.dart';
import 'profile/pedia_data_torpedoes.dart';

class PediaModule extends Equatable {
  const PediaModule({
    @required this.image,
    @required this.moduleId,
    @required this.moduleIdStr,
    @required this.name,
    @required this.priceCredit,
    @required this.tag,
    @required this.type,
    @required this.profile,
  });

  // Image link
  final String image;

  final num moduleId;

  final String moduleIdStr;

  final String name;

  // Cost in credits
  final num priceCredit;

  final String tag;

  final String type;

  // Module parameters, values related to the module type
  final PeidaModulesProfile profile;

  @override
  List<Object> get props => [
        image,
        moduleId,
        moduleIdStr,
        name,
        priceCredit,
        tag,
        type,
        profile,
      ];
}

class PeidaModulesProfile extends Equatable {
  const PeidaModulesProfile({
    this.artillery,
    this.diveBomber,
    @required this.engine,
    this.fighters,
    this.fireControl,
    this.flightControl,
    @required this.hull,
    this.torpedoBomber,
    this.torpedoes,
  });

  // Main battery. If the module is absent on the ship, field value is null.
  final PediaDataArtillery artillery;
  // Secondary armament. If the module is absent on the ship, field value is null.

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

  final PediaDataTorpedoBomber torpedoBomber;
  // Torpedo tubes. If the module is absent on the ship, field value is null.
  final PediaDataTorpedoes torpedoes;

  @override
  List<Object> get props => [
        artillery,
        diveBomber,
        engine,
        fighters,
        fireControl,
        flightControl,
        hull,
        torpedoBomber,
        torpedoes,
      ];
}
