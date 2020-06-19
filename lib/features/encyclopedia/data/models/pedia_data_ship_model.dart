import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_json_data.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/ship.dart';

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

part 'pedia_data_ship_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaShipModel extends PediaShip implements PediaJsonData {
  const PediaShipModel({
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

  @override
  factory PediaShipModel.fromJson(Map<String, dynamic> json) {
    return _$PediaShipsModelFromJson(json);
  }

  @override
  final int description;

  @override
  // Indicates that ship characteristics are used for illustration, and may be changed.
  final bool hasDemoProfile;

  @override
  // Indicates if the ship is Premium ship
  final bool isPremium;

  @override
  // Indicates if the ship is on a special offer
  final bool isSpecial;

  @override
  // Number of slots for upgrades
  final num modSlots;

  @override
  final String name;

  @override
  final String nation;

  @override
  // List of ships available for research in form of pairs
  final Map<String, dynamic> nextShips;

  @override
  // Cost in credits
  final num priceCredit;

  @override
  // Cost in gold
  final num priceGold;

  @override
  final num shipId;

  @override
  final String shipIdStr;

  @override
  final String tier;

  @override
  final String type;

  @override
  // List of compatible Modifications
  final List<int> upgrades;

  @override
  // Parameters of basic configuration
  final PediaDataShipsDefaultProfileModel defaultProfile;

  @override
  final PediaDataShipsImagesModel images;

  @override
  // List of compatible modules
  final PediaDataShipsModulesModel modules;

  @override
  // List of compatible modules
  final List<PediaDataShipsModulesTreeModel> modulesTree;

  @override
  Map<String, dynamic> toJson() => _$PediaShipsModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataShipsDefaultProfileModel extends PediaDataShipsDefaultProfile
    implements PediaJsonData {
  const PediaDataShipsDefaultProfileModel({
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

  @override
  factory PediaDataShipsDefaultProfileModel.fromJson(
      Map<String, dynamic> json) {
    return _$PediaDataShipsDefaultProfileModelFromJson(json);
  }

  @override
  // Anti-aircraft guns. If the module is absent on the ship, field value is null.
  final PediaDataAntiAircraftModel antiAircraft;
  @override
  // Survivability of basic configuration
  final PediaDataArmourModel armour;
  @override
  // Main battery. If the module is absent on the ship, field value is null.
  final PediaDataArtilleryModel artillery;
  @override
  // Secondary armament. If the module is absent on the ship, field value is null.
  final PediaDataAtbasModel atbas;
  @override
  // Maximum battle tier for a random battle
  final num battleLevelRangeMax;
  @override
  // Minimum battle tier for a random battle
  final num battleLevelRangeMin;
  @override
  // Concealment of basic configuration
  final PediaDataConcealmentModel concealment;
  @override
  // Dive bombers. If the module is absent on the ship, field value is null.
  final PediaDataDiveBomberModel diveBomber;
  @override
  // Engine
  final PediaDataEngineModel engine;
  @override
  // Fighters. If the module is absent on the ship, field value is null.
  final PediaDataFightersModel fighters;
  @override
  // Gun Fire Control System. If the module is absent on the ship, field value is null.
  final PediaDataFireControlModel fireControl;
  @override
  // Flight Control. If the module is absent on the ship, field value is null.
  final PediaDataFlightControlModel flightControl;
  @override
  // Hull
  final PediaDataHullModel hull;
  @override
  // Maneuverability of basic configuration
  final PediaDataMobilityModel mobility;
  @override
  // Torpedo bombers. If the module is absent on the ship, field value is null.
  final PediaDataTorpedoBomberModel torpedoBomber;
  @override
  // Torpedo tubes. If the module is absent on the ship, field value is null.
  final PediaDataTorpedoesModel torpedoes;
  @override
  // Armament effectiveness of basic configuration
  final PediaDataWeaponryModel weaponry;

  @override
  Map<String, dynamic> toJson() =>
      _$PediaDataShipsDefaultProfileModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataShipsImagesModel extends PediaDataShipsImages
    implements PediaJsonData {
  const PediaDataShipsImagesModel({
    @required this.contour,
    @required this.large,
    @required this.medium,
    @required this.small,
  });

  @override
  factory PediaDataShipsImagesModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsImagesModelFromJson(json);
  }

  @override
  // URL to 186 x 48 px outline image of ship
  final String contour;
  @override
  // URL to 870 x 512 px image of ship
  final String large;
  @override
  // URL to 435 x 256 px image of ship
  final String medium;
  @override
  // URL to 214 x 126 px image of ship
  final String small;

  @override
  Map<String, dynamic> toJson() => _$PediaDataShipsImagesModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataShipsModulesModel extends PediaDataShipsModules
    implements PediaJsonData {
  const PediaDataShipsModulesModel({
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

  @override
  factory PediaDataShipsModulesModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsModulesModelFromJson(json);
  }

  @override
  final List<int> artillery;
  @override
  final List<int> diveBomber;
  @override
  final List<int> engine;
  @override
  final List<int> fighter;
  @override
  final List<int> fireControl;
  @override
  final List<int> flightControl;
  @override
  final List<int> hull;
  @override
  final List<int> torpedoBomber;
  @override
  final List<int> torpedoes;

  @override
  Map<String, dynamic> toJson() => _$PediaDataShipsModulesModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataShipsModulesTreeModel extends PediaDataShipsModulesTree
    implements PediaJsonData {
  const PediaDataShipsModulesTreeModel({
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

  @override
  factory PediaDataShipsModulesTreeModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsModulesTreeModelFromJson(json);
  }

  @override
  // Indicates if the module is basic
  final bool isDefault;
  @override
  final num moduleId;
  @override
  final String moduleIdStr;
  @override
  final String name;
  @override
  // List of module IDs available after research of the module
  final List<int> nextModules;
  @override
  // List of vehicle IDs available after research of the module
  final List<int> nextShips;
  @override
  // Cost in credits
  final num priceCredit;
  @override
  // Research cost
  final num priceXp;
  @override
  // Module type
  final String type;

  @override
  Map<String, dynamic> toJson() => _$PediaDataShipsModulesTreeModelToJson(this);
}
