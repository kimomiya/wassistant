import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/pedia_data.dart';
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

part 'pedia_data_ships_model.g.dart';

@JsonSerializable()
class PediaShips extends PediaDataInterface {
  PediaShips({
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

  @JsonKey(name: 'description')
  final int description;

  // Indicates that ship characteristics are used for illustration, and may be changed.
  @JsonKey(name: 'has_demo_profile')
  final bool hasDemoProfile;

  // Indicates if the ship is Premium ship
  @JsonKey(name: 'is_premium')
  final bool isPremium;

  // Indicates if the ship is on a special offer
  @JsonKey(name: 'is_special')
  final bool isSpecial;

  // Number of slots for upgrades
  @JsonKey(name: 'mod_slots')
  final num modSlots;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'nation')
  final String nation;

  // List of ships available for research in form of pairs
  @JsonKey(name: 'next_ships')
  final Map<String, dynamic> nextShips;

  // Cost in credits
  @JsonKey(name: 'price_credit')
  final num priceCredit;

  // Cost in gold
  @JsonKey(name: 'price_gold')
  final num priceGold;

  @JsonKey(name: 'ship_id')
  final num shipId;

  @JsonKey(name: 'ship_id_str')
  final String shipIdStr;

  @JsonKey(name: 'tier')
  final String tier;

  @JsonKey(name: 'type')
  final String type;

  // List of compatible Modifications
  @JsonKey(name: 'upgrades')
  final List<int> upgrades;

  // Parameters of basic configuration
  @JsonKey(name: 'default_profile')
  final PediaDataShipsDefaultProfile defaultProfile;

  @JsonKey(name: 'images')
  final PediaDataShipsImages images;

  // List of compatible modules
  @JsonKey(name: 'modules')
  final PediaDataShipsModules modules;

  // List of compatible modules
  @JsonKey(name: 'modules_tree')
  final List<PediaDataShipsModulesTree> modulesTree;

  static PediaShips fromJson(Map<String, dynamic> json) {
    return _$PediaShipsFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaShips instance) {
    return _$PediaShipsToJson(instance);
  }
}

@JsonSerializable()
class PediaDataShipsDefaultProfile extends Equatable {
  PediaDataShipsDefaultProfile({
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
  // Maximum battle tier for a random battle
  @JsonKey(name: 'battle_level_range_max')
  final num battleLevelRangeMax;
  // Minimum battle tier for a random battle
  @JsonKey(name: 'battle_level_range_min')
  final num battleLevelRangeMin;
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

  static PediaDataShipsDefaultProfile fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsDefaultProfileFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsDefaultProfileToJson(this);
  }

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

@JsonSerializable()
class PediaDataShipsImages extends Equatable {
  PediaDataShipsImages({
    @required this.contour,
    @required this.large,
    @required this.medium,
    @required this.small,
  });
  // URL to 186 x 48 px outline image of ship
  @JsonKey(name: 'contour')
  final String contour;
  // URL to 870 x 512 px image of ship
  @JsonKey(name: 'large')
  final String large;
  // URL to 435 x 256 px image of ship
  @JsonKey(name: 'medium')
  final String medium;
  // URL to 214 x 126 px image of ship
  @JsonKey(name: 'small')
  final String small;

  static PediaDataShipsImages fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsImagesFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsImagesToJson(this);
  }

  @override
  List<Object> get props => [
        contour,
        large,
        medium,
        small,
      ];
}

@JsonSerializable()
class PediaDataShipsModules extends Equatable {
  PediaDataShipsModules({
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

  @JsonKey(name: 'artillery')
  final List<int> artillery;
  @JsonKey(name: 'dive_bomber')
  final List<int> diveBomber;
  @JsonKey(name: 'engine')
  final List<int> engine;
  @JsonKey(name: 'fighter')
  final List<int> fighter;
  @JsonKey(name: 'fire_control')
  final List<int> fireControl;
  @JsonKey(name: 'flight_control')
  final List<int> flightControl;
  @JsonKey(name: 'hull')
  final List<int> hull;
  @JsonKey(name: 'torpedo_bomber')
  final List<int> torpedoBomber;
  @JsonKey(name: 'torpedoes')
  final List<int> torpedoes;

  static PediaDataShipsModules fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsModulesFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsModulesToJson(this);
  }

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

@JsonSerializable()
class PediaDataShipsModulesTree extends Equatable {
  PediaDataShipsModulesTree({
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
  @JsonKey(name: 'is_default')
  final bool isDefault;
  @JsonKey(name: 'module_id')
  final num moduleId;
  @JsonKey(name: 'module_id_str')
  final String moduleIdStr;
  @JsonKey(name: 'name')
  final String name;
  // List of module IDs available after research of the module
  @JsonKey(name: 'next_modules')
  final List<int> nextModules;
  // List of vehicle IDs available after research of the module
  @JsonKey(name: 'next_ships')
  final List<int> nextShips;
  // Cost in credits
  @JsonKey(name: 'price_credit')
  final num priceCredit;
  // Research cost
  @JsonKey(name: 'price_xp')
  final num priceXp;
  // Module type
  @JsonKey(name: 'type')
  final String type;

  static PediaDataShipsModulesTree fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsModulesTreeFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsModulesTreeToJson(this);
  }

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
