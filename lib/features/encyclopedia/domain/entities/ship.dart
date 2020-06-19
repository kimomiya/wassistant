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

class PediaShip extends Equatable {
  const PediaShip({
    @required this.description,
    @required this.hasDemoProfile,
    @required this.isPremium,
    @required this.isSpecial,
    @required this.modSlots,
    @required this.name,
    @required this.nation,
    @required this.nextShips,
    @required this.priceCredit,
    @required this.priceGold,
    @required this.shipId,
    @required this.shipIdStr,
    @required this.tier,
    @required this.type,
    @required this.upgrades,
    @required this.defaultProfile,
    @required this.images,
    @required this.modules,
    @required this.modulesTree,
  });

  final int description;

  // Indicates that ship characteristics are used for illustration, and may be changed.
  final bool hasDemoProfile;

  // Indicates if the ship is Premium ship
  final bool isPremium;

  // Indicates if the ship is on a special offer
  final bool isSpecial;

  // Number of slots for upgrades
  final num modSlots;

  final String name;

  final String nation;

  // List of ships available for research in form of pairs
  final Map<String, dynamic> nextShips;

  // Cost in credits
  final num priceCredit;

  // Cost in gold
  final num priceGold;

  final num shipId;

  final String shipIdStr;

  final String tier;

  final String type;

  // List of compatible Modifications
  final List<int> upgrades;

  // Parameters of basic configuration
  final PediaDataShipsDefaultProfile defaultProfile;

  final PediaDataShipsImages images;

  // List of compatible modules
  final PediaDataShipsModules modules;

  // List of compatible modules
  final List<PediaDataShipsModulesTree> modulesTree;

  @override
  List<Object> get props => [
        description,
        hasDemoProfile,
        isPremium,
        isSpecial,
        modSlots,
        name,
        nation,
        nextShips,
        priceCredit,
        priceGold,
        shipId,
        shipIdStr,
        tier,
        type,
        upgrades,
        defaultProfile,
        images,
        modules,
        modulesTree,
      ];
}

class PediaDataShipsDefaultProfile extends Equatable {
  const PediaDataShipsDefaultProfile({
    this.antiAircraft,
    @required this.armour,
    this.artillery,
    this.atbas,
    @required this.battleLevelRangeMax,
    @required this.battleLevelRangeMin,
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

  // Anti-aircraft guns. If the module is absent on the ship, field value is null.
  final PediaDataAntiAircraft antiAircraft;
  // Survivability of basic configuration
  final PediaDataArmour armour;
  // Main battery. If the module is absent on the ship, field value is null.
  final PediaDataArtillery artillery;
  // Secondary armament. If the module is absent on the ship, field value is null.
  final PediaDataAtbas atbas;
  // Maximum battle tier for a random battle
  final num battleLevelRangeMax;
  // Minimum battle tier for a random battle
  final num battleLevelRangeMin;
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

class PediaDataShipsImages extends Equatable {
  const PediaDataShipsImages({
    @required this.contour,
    @required this.large,
    @required this.medium,
    @required this.small,
  });
  // URL to 186 x 48 px outline image of ship
  final String contour;
  // URL to 870 x 512 px image of ship
  final String large;
  // URL to 435 x 256 px image of ship
  final String medium;
  // URL to 214 x 126 px image of ship
  final String small;

  @override
  List<Object> get props => [
        contour,
        large,
        medium,
        small,
      ];
}

class PediaDataShipsModules extends Equatable {
  const PediaDataShipsModules({
    this.artillery,
    this.diveBomber,
    this.engine,
    this.fighter,
    this.fireControl,
    this.flightControl,
    this.hull,
    this.torpedoBomber,
    this.torpedoes,
  });

  final List<int> artillery;
  final List<int> diveBomber;
  final List<int> engine;
  final List<int> fighter;
  final List<int> fireControl;
  final List<int> flightControl;
  final List<int> hull;
  final List<int> torpedoBomber;
  final List<int> torpedoes;

  @override
  List<Object> get props => [
        artillery,
        diveBomber,
        engine,
        fighter,
        fireControl,
        flightControl,
        hull,
        torpedoBomber,
        torpedoes,
      ];
}

class PediaDataShipsModulesTree extends Equatable {
  const PediaDataShipsModulesTree({
    @required this.isDefault,
    @required this.moduleId,
    @required this.moduleIdStr,
    @required this.name,
    @required this.nextModules,
    @required this.nextShips,
    @required this.priceCredit,
    @required this.priceXp,
    @required this.type,
  });

  // Indicates if the module is basic
  final bool isDefault;
  final num moduleId;
  final String moduleIdStr;
  final String name;
  // List of module IDs available after research of the module
  final List<int> nextModules;
  // List of vehicle IDs available after research of the module
  final List<int> nextShips;
  // Cost in credits
  final num priceCredit;
  // Research cost
  final num priceXp;
  // Module type
  final String type;

  @override
  List<Object> get props => [
        isDefault,
        moduleId,
        moduleIdStr,
        name,
        nextModules,
        nextShips,
        priceCredit,
        priceXp,
        type,
      ];
}
