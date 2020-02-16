import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/pedia_data.dart';

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

  @override
  static PediaDataInterface fromJson(Map<String, dynamic> json) {
    return _$PediaShipsFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$PediaShipsToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsDefaultProfile {
  PediaDataShipsDefaultProfile({
    @required this.battleLevelRangeMax,
    @required this.battleLevelRangeMin,
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
  // Anti-aircraft guns. If the module is absent on the ship, field value is null.
  @JsonKey(name: 'anti_aircraft')
  final PediaDataShipsProfileAntiAircraft antiAircraft;
  // Survivability of basic configuration
  @JsonKey(name: 'armour')
  final PediaDataShipsProfileArmour armour;
  // Main battery. If the module is absent on the ship, field value is null.
  @JsonKey(name: 'artillery')
  final PediaDataShipsProfileArtillery artillery;
  // Secondary armament. If the module is absent on the ship, field value is null.
  @JsonKey(name: 'atbas')
  final PediaDataShipsProfileAtbas atbas;
  // Concealment of basic configuration
  @JsonKey(name: 'concealment')
  final PediaDataShipsProfileConcealment concealment;
  // Dive bombers. If the module is absent on the ship, field value is null.
  @JsonKey(name: 'dive_bomber')
  final PediaDataShipsProfileDiveBomber diveBomber;
  // Engine
  @JsonKey(name: 'engine')
  final PediaDataShipsProfileEngine engine;
  // Fighters. If the module is absent on the ship, field value is null.
  @JsonKey(name: 'fighters')
  final PediaDataShipsProfileFighters fighters;
  // Gun Fire Control System. If the module is absent on the ship, field value is null.
  @JsonKey(name: 'fire_control')
  final PediaDataShipsProfileFireControl fireControl;
  // Flight Control. If the module is absent on the ship, field value is null.
  @JsonKey(name: 'flight_control')
  final PediaDataShipsProfileFlightControl flightControl;
  // Hull
  @JsonKey(name: 'hull')
  final PediaDataShipsProfileHull hull;
  // Maneuverability of basic configuration
  @JsonKey(name: 'mobility')
  final PediaDataShipsProfileMobility mobility;
  // Torpedo bombers. If the module is absent on the ship, field value is null.
  @JsonKey(name: 'torpedo_bomber')
  final PediaDataShipsProfileTorpedoBomber torpedoBomber;
  // Torpedo tubes. If the module is absent on the ship, field value is null.
  @JsonKey(name: 'torpedoes')
  final PediaDataShipsProfileTorpedoes torpedoes;
  // Armament effectiveness of basic configuration
  @JsonKey(name: 'weaponry')
  final PediaDataShipsProfileWeaponry weaponry;

  static PediaDataShipsDefaultProfile fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsDefaultProfileFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsDefaultProfileToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsImages {
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
}

@JsonSerializable()
class PediaDataShipsModules {
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
}

@JsonSerializable()
class PediaDataShipsModulesTree {
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
}

@JsonSerializable()
class PediaDataShipsProfileWeaponry {
  PediaDataShipsProfileWeaponry({
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

  static PediaDataShipsProfileWeaponry fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsProfileWeaponryFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileWeaponryToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileTorpedoes {
  PediaDataShipsProfileTorpedoes({
    @required this.distance,
    @required this.maxDamage,
    @required this.reloadTime,
    @required this.rotationTime,
    @required this.torpedoName,
    @required this.torpedoSpeed,
    @required this.torpedoesId,
    @required this.torpedoesIdStr,
    @required this.visibilityDist,
    @required this.slots,
  });
  // Firing range
  @JsonKey(name: 'distance')
  final num distance;
  // Maximum Damage
  @JsonKey(name: 'max_damage')
  final num maxDamage;
  // Reload Time (sec)
  @JsonKey(name: 'reload_time')
  final num reloadTime;
  // 180 Degree Turn Time (sec)
  @JsonKey(name: 'rotation_time')
  final num rotationTime;
  // Torpedo
  @JsonKey(name: 'torpedo_name')
  final String torpedoName;
  // Torpedo Speed (knots)
  @JsonKey(name: 'torpedo_speed')
  final num torpedoSpeed;
  // Torpedo tubes' ID
  @JsonKey(name: 'torpedoes_id')
  final num torpedoesId;
  @JsonKey(name: 'torpedoes_id_str')
  final String torpedoesIdStr;
  // Torpedo range (km)
  @JsonKey(name: 'visibility_dist')
  final num visibilityDist;
  // Firing range
  @JsonKey(name: 'slots')
  final PediaDataShipsProfileTorpedoesSlots slots;

  static PediaDataShipsProfileTorpedoes fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsProfileTorpedoesFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileTorpedoesToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileTorpedoesSlots {
  PediaDataShipsProfileTorpedoesSlots({
    @required this.barrels,
    @required this.caliber,
    @required this.guns,
    @required this.name,
  });
  // Number of barrels per slot
  @JsonKey(name: 'barrels')
  final num barrels;
  // Caliber
  @JsonKey(name: 'caliber')
  final num caliber;
  // Number of main turrets
  @JsonKey(name: 'guns')
  final num guns;
  @JsonKey(name: 'name')
  final String name;

  static PediaDataShipsProfileTorpedoesSlots fromJson(
      Map<String, dynamic> json) {
    return _$PediaDataShipsProfileTorpedoesSlotsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileTorpedoesSlotsToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileTorpedoBomber {
  PediaDataShipsProfileTorpedoBomber({
    @required this.cruiseSpeed,
    @required this.gunnerDamage,
    @required this.maxDamage,
    @required this.maxHealth,
    @required this.name,
    @required this.planeLevel,
    @required this.prepareTime,
    @required this.squadrons,
    @required this.torpedoBomberId,
    @required this.torpedoBomberIdStr,
    @required this.torpedoDamage,
    @required this.torpedoDistance,
    @required this.torpedoMaxSpeed,
    @required this.torpedoName,
    @required this.countInSquadron,
  });
  // Cruise Speed (knots)
  @JsonKey(name: 'cruise_speed')
  final num cruiseSpeed;
  // Average damage per rear gunner of a torpedo bomber per second
  @JsonKey(name: 'gunner_damage')
  final num gunnerDamage;
  // Maximum Bomb Damage
  @JsonKey(name: 'max_damage')
  final num maxDamage;
  // Survivability
  @JsonKey(name: 'max_health')
  final num maxHealth;
  // Name of squadron
  @JsonKey(name: 'name')
  final String name;
  // Torpedo bomber tier
  @JsonKey(name: 'plane_level')
  final num planeLevel;
  // Time of preparation for takeoff (sec)
  @JsonKey(name: 'prepare_time')
  final num prepareTime;
  // Number of squadrons
  @JsonKey(name: 'squadrons')
  final num squadrons;
  @JsonKey(name: 'torpedo_bomber_id')
  final num torpedoBomberId;
  @JsonKey(name: 'torpedo_bomber_id_str')
  final String torpedoBomberIdStr;
  // Maximum torpedo damage
  @JsonKey(name: 'torpedo_damage')
  final num torpedoDamage;
  // Firing range
  @JsonKey(name: 'torpedo_distance')
  final num torpedoDistance;
  // Top Speed (knots)
  @JsonKey(name: 'torpedo_max_speed')
  final num torpedoMaxSpeed;
  // Torpedo name
  @JsonKey(name: 'torpedo_name')
  final String torpedoName;
  // Number of aircraft in a squadron
  @JsonKey(name: 'count_in_squadron')
  final PediaDataShipsProfileTorpedoBomberCountInSquadron countInSquadron;

  static PediaDataShipsProfileTorpedoBomber fromJson(
      Map<String, dynamic> json) {
    return _$PediaDataShipsProfileTorpedoBomberFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileTorpedoBomberToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileTorpedoBomberCountInSquadron {
  PediaDataShipsProfileTorpedoBomberCountInSquadron({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataShipsProfileTorpedoBomberCountInSquadron fromJson(
      Map<String, dynamic> json) {
    return _$PediaDataShipsProfileTorpedoBomberCountInSquadronFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileTorpedoBomberCountInSquadronToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileMobility {
  PediaDataShipsProfileMobility({
    @required this.maxSpeed,
    @required this.rudderTime,
    @required this.total,
    @required this.turningRadius,
  });
  // Top Speed (knots)
  @JsonKey(name: 'max_speed')
  final num maxSpeed;
  // Rudder Shift Time (sec)
  @JsonKey(name: 'rudder_time')
  final num rudderTime;
  // Maneuverability (%)
  @JsonKey(name: 'total')
  final num total;
  // Turning Circle Radius (m)
  @JsonKey(name: 'turning_radius')
  final num turningRadius;

  static PediaDataShipsProfileMobility fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsProfileMobilityFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileMobilityToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileHull {
  PediaDataShipsProfileHull({
    @required this.antiAircraftBarrels,
    @required this.artilleryBarrels,
    @required this.atbaBarrels,
    @required this.health,
    @required this.hullId,
    @required this.hullIdStr,
    @required this.planesAmount,
    @required this.torpedoesBarrels,
    @required this.range,
  });
  // AA Mounts
  @JsonKey(name: 'anti_aircraft_barrels')
  final num antiAircraftBarrels;
  // Number of main turrets
  @JsonKey(name: 'artillery_barrels')
  final num artilleryBarrels;
  // Secondary gun turrets
  @JsonKey(name: 'atba_barrels')
  final num atbaBarrels;
  // Hit points
  @JsonKey(name: 'health')
  final num health;
  @JsonKey(name: 'hull_id')
  final num hullId;
  @JsonKey(name: 'hull_id_str')
  final String hullIdStr;
  // Hangar capacity
  @JsonKey(name: 'planes_amount')
  final num planesAmount;
  // Torpedo tubes
  @JsonKey(name: 'torpedoes_barrels')
  final num torpedoesBarrels;
  // Armor (mm)
  @JsonKey(name: 'range')
  final PediaDataShipsProfileHullRange range;

  static PediaDataShipsProfileHull fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsProfileHullFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileHullToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileHullRange {
  PediaDataShipsProfileHullRange({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataShipsProfileHullRange fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsProfileHullRangeFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileHullRangeToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileFlightControl {
  PediaDataShipsProfileFlightControl({
    @required this.bomberSquadrons,
    @required this.fighterSquadrons,
    @required this.flightControlId,
    @required this.flightControlIdStr,
    @required this.torpedoSquadrons,
  });
  // Number of bomber squadrons
  @JsonKey(name: 'bomber_squadrons')
  final num bomberSquadrons;
  // Number of fighter squadrons
  @JsonKey(name: 'fighter_squadrons')
  final num fighterSquadrons;
  @JsonKey(name: 'flight_control_id')
  final num flightControlId;
  @JsonKey(name: 'flight_control_id_str')
  final String flightControlIdStr;
  // Number of torpedo bomber squadrons
  @JsonKey(name: 'torpedo_squadrons')
  final num torpedoSquadrons;

  static PediaDataShipsProfileFlightControl fromJson(
      Map<String, dynamic> json) {
    return _$PediaDataShipsProfileFlightControlFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileFlightControlToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileFireControl {
  PediaDataShipsProfileFireControl({
    @required this.distance,
    @required this.distanceIncrease,
    @required this.fireControlId,
    @required this.fireControlIdStr,
  });
  // Firing range
  @JsonKey(name: 'distance')
  final num distance;
  // Firing Range extension (%)
  @JsonKey(name: 'distance_increase')
  final num distanceIncrease;
  // ID of Gun Fire Control System
  @JsonKey(name: 'fire_control_id')
  final num fireControlId;
  @JsonKey(name: 'fire_control_id_str')
  final String fireControlIdStr;

  static PediaDataShipsProfileFireControl fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsProfileFireControlFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileFireControlToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileFighters {
  PediaDataShipsProfileFighters({
    @required this.avgDamage,
    @required this.cruiseSpeed,
    @required this.fightersId,
    @required this.fightersIdStr,
    @required this.gunnerDamage,
    @required this.maxAmmo,
    @required this.maxHealth,
    @required this.name,
    @required this.planeLevel,
    @required this.prepareTime,
    @required this.squadrons,
    @required this.countInSquadron,
  });
  // Average damage caused per second
  @JsonKey(name: 'avg_damage')
  final num avgDamage;
  // Cruise Speed (knots)
  @JsonKey(name: 'cruise_speed')
  final num cruiseSpeed;
  // Fighters' ID
  @JsonKey(name: 'fighters_id')
  final num fightersId;
  @JsonKey(name: 'fighters_id_str')
  final String fightersIdStr;
  // Average damage per gunner of a fighter per second
  @JsonKey(name: 'gunner_damage')
  final num gunnerDamage;
  // Ammunition
  @JsonKey(name: 'max_ammo')
  final num maxAmmo;
  // Survivability
  @JsonKey(name: 'max_health')
  final num maxHealth;
  // Name of squadron
  @JsonKey(name: 'name')
  final String name;
  // Fighter tier
  @JsonKey(name: 'plane_level')
  final num planeLevel;
  // Time of preparation for takeoff (sec)
  @JsonKey(name: 'prepare_time')
  final num prepareTime;
  // Number of squadrons
  @JsonKey(name: 'squadrons')
  final num squadrons;
  // Number of squadrons
  @JsonKey(name: 'count_in_squadron')
  final PediaDataShipsProfileFightersCountInSquadron countInSquadron;

  static PediaDataShipsProfileFighters fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsProfileFightersFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileFightersToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileFightersCountInSquadron {
  PediaDataShipsProfileFightersCountInSquadron({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataShipsProfileFightersCountInSquadron fromJson(
      Map<String, dynamic> json) {
    return _$PediaDataShipsProfileFightersCountInSquadronFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileFightersCountInSquadronToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileEngine {
  PediaDataShipsProfileEngine({
    @required this.engineId,
    @required this.engineIdStr,
    @required this.maxSpeed,
  });
  @JsonKey(name: 'engine_id')
  final num engineId;
  @JsonKey(name: 'engine_id_str')
  final String engineIdStr;
  // Top Speed (knots)
  @JsonKey(name: 'max_speed')
  final num maxSpeed;

  static PediaDataShipsProfileEngine fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsProfileEngineFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileEngineToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileDiveBomber {
  PediaDataShipsProfileDiveBomber({
    @required this.bombBulletMass,
    @required this.bombBurnProbability,
    @required this.bombDamage,
    @required this.bombName,
    @required this.cruiseSpeed,
    @required this.diveBomberId,
    @required this.diveBomberIdStr,
    @required this.gunnerDamage,
    @required this.maxDamage,
    @required this.maxHealth,
    @required this.name,
    @required this.planeLevel,
    @required this.prepareTime,
    @required this.squadrons,
    @required this.accuracy,
    @required this.countInSquadron,
  });
  // Bomb weight
  @JsonKey(name: 'bomb_bullet_mass')
  final num bombBulletMass;
  // Chance of Fire on target caused by bomb (%)
  @JsonKey(name: 'bomb_burn_probability')
  final num bombBurnProbability;
  // Maximum bomb damage
  @JsonKey(name: 'bomb_damage')
  final num bombDamage;
  // Bomb name
  @JsonKey(name: 'bomb_name')
  final String bombName;
  // Cruise Speed (knots)
  @JsonKey(name: 'cruise_speed')
  final num cruiseSpeed;
  // Dive bombers' ID
  @JsonKey(name: 'dive_bomber_id')
  final num diveBomberId;
  // Dive bombers string ID
  @JsonKey(name: 'dive_bomber_id_str')
  final String diveBomberIdStr;
  // Average damage per rear gunner of a dive bomber per second
  @JsonKey(name: 'gunner_damage')
  final num gunnerDamage;
  // Maximum Bomb Damage
  @JsonKey(name: 'max_damage')
  final num maxDamage;
  // Survivability
  @JsonKey(name: 'max_health')
  final num maxHealth;
  // Name of squadron
  @JsonKey(name: 'name')
  final String name;
  // Dive bomber tier
  @JsonKey(name: 'plane_level')
  final num planeLevel;
  // Time of preparation for takeoff (sec)
  @JsonKey(name: 'prepare_time')
  final num prepareTime;
  // Number of squadrons
  @JsonKey(name: 'squadrons')
  final num squadrons;
  // Accuracy
  @JsonKey(name: 'accuracy')
  final PediaDataShipsProfileDiveBomberAccuracy accuracy;
  // Number of aircraft in a squadron
  @JsonKey(name: 'count_in_squadron')
  final PediaDataShipsProfileDiveBomberCountInSquadron countInSquadron;

  static PediaDataShipsProfileDiveBomber fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsProfileDiveBomberFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileDiveBomberToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileDiveBomberCountInSquadron {
  PediaDataShipsProfileDiveBomberCountInSquadron({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataShipsProfileDiveBomberCountInSquadron fromJson(
      Map<String, dynamic> json) {
    return _$PediaDataShipsProfileDiveBomberCountInSquadronFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileDiveBomberCountInSquadronToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileDiveBomberAccuracy {
  PediaDataShipsProfileDiveBomberAccuracy({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataShipsProfileDiveBomberAccuracy fromJson(
      Map<String, dynamic> json) {
    return _$PediaDataShipsProfileDiveBomberAccuracyFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileDiveBomberAccuracyToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileConcealment {
  PediaDataShipsProfileConcealment({
    @required this.detectDistanceByPlane,
    @required this.detectDistanceByShip,
    @required this.total,
  });
  // Air Detectability Range
  @JsonKey(name: 'detect_distance_by_plane')
  final num detectDistanceByPlane;
  // Surface Detectability Range
  @JsonKey(name: 'detect_distance_by_ship')
  final num detectDistanceByShip;
  // Concealment (%)
  @JsonKey(name: 'total')
  final num total;

  static PediaDataShipsProfileConcealment fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsProfileConcealmentFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileConcealmentToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileAtbas {
  PediaDataShipsProfileAtbas({
    @required this.distance,
    @required this.slots,
  });
  // Firing range
  @JsonKey(name: 'distance')
  final num distance;
  // Main gun slots
  @JsonKey(name: 'slots')
  final PediaDataShipsProfileAtbasSlots slots;

  static PediaDataShipsProfileAtbas fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsProfileAtbasFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileAtbasToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileAtbasSlots {
  PediaDataShipsProfileAtbasSlots({
    @required this.bulletMass,
    @required this.bulletSpeed,
    @required this.burnProbability,
    @required this.damage,
    @required this.gunRate,
    @required this.name,
    @required this.shotDelay,
    @required this.type,
  });
  // Shell weight
  @JsonKey(name: 'bullet_mass')
  final num bulletMass;
  // Shell speed
  @JsonKey(name: 'bullet_speed')
  final num bulletSpeed;
  // Chance of Fire on target caused by shell (%)
  @JsonKey(name: 'burn_probability')
  final num burnProbability;
  // Maximum Damage
  @JsonKey(name: 'damage')
  final num damage;
  // Rate of fire (rounds / min)
  @JsonKey(name: 'gun_rate')
  final num gunRate;
  @JsonKey(name: 'name')
  final String name;
  // Reload time (s)
  @JsonKey(name: 'shot_delay')
  final num shotDelay;
  @JsonKey(name: 'type')
  final String type;

  static PediaDataShipsProfileAtbasSlots fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsProfileAtbasSlotsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileAtbasSlotsToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileArtillery {
  PediaDataShipsProfileArtillery({
    this.artilleryId,
    this.artilleryIdStr,
    this.distance,
    this.gunRate,
    this.maxDispersion,
    this.rotationTime,
    this.shotDelay,
    this.shells,
    this.slots,
  });
  // Gun ID
  @JsonKey(name: 'artillery_id')
  final num artilleryId;
  @JsonKey(name: 'artillery_id_str')
  final String artilleryIdStr;
  // Firing range
  @JsonKey(name: 'distance')
  final num distance;
  // Rate of fire (rounds / min)
  @JsonKey(name: 'gun_rate')
  final num gunRate;
  // Maximum dispersion (m)
  @JsonKey(name: 'max_dispersion')
  final num maxDispersion;
  // 180 Degree Turn Time (sec)
  @JsonKey(name: 'rotation_time')
  final num rotationTime;
  // Main battery reload time (s)
  @JsonKey(name: 'shot_delay')
  final num shotDelay;
  // Shells
  @JsonKey(name: 'shells')
  final PediaDataShipsProfileArtilleryShells shells;
  // Main gun slots
  @JsonKey(name: 'slots')
  final PediaDataShipsProfileArtillerySlots slots;

  static PediaDataShipsProfileArtillery fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsProfileArtilleryFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileArtilleryToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileArtillerySlots {
  PediaDataShipsProfileArtillerySlots({
    @required this.barrels,
    @required this.guns,
    @required this.name,
  });
  // Number of barrels per slot
  @JsonKey(name: 'barrels')
  final num barrels;
  // Number of main turrets
  @JsonKey(name: 'guns')
  final num guns;
  @JsonKey(name: 'name')
  final String name;

  static PediaDataShipsProfileArtillerySlots fromJson(
      Map<String, dynamic> json) {
    return _$PediaDataShipsProfileArtillerySlotsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileArtillerySlotsToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileArtilleryShells {
  PediaDataShipsProfileArtilleryShells({
    @required this.bulletMass,
    @required this.bulletSpeed,
    @required this.burnProbability,
    @required this.damage,
    @required this.name,
    @required this.type,
  });
  // Shell weight
  @JsonKey(name: 'bullet_mass')
  final num bulletMass;
  // Shell speed
  @JsonKey(name: 'bullet_speed')
  final num bulletSpeed;
  // Chance of Fire on target caused by shell (%)
  @JsonKey(name: 'burn_probability')
  final num burnProbability;
  // Maximum Damage
  @JsonKey(name: 'damage')
  final num damage;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'type')
  final String type;

  static PediaDataShipsProfileArtilleryShells fromJson(
      Map<String, dynamic> json) {
    return _$PediaDataShipsProfileArtilleryShellsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileArtilleryShellsToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileArmour {
  PediaDataShipsProfileArmour({
    @required this.floodDamage,
    @required this.floodProb,
    @required this.health,
    @required this.total,
    @required this.casemate,
    @required this.citadel,
    @required this.deck,
    @required this.extremities,
    @required this.range,
  });
  // Torpedo Protection. Damage Reduction (%)
  @JsonKey(name: 'flood_damage')
  final num floodDamage;
  // Torpedo Protection. Flooding Risk Reduction (%)
  @JsonKey(name: 'flood_prob')
  final num floodProb;
  // Hit points
  @JsonKey(name: 'health')
  final num health;
  // Armor protection (%)
  @JsonKey(name: 'total')
  final num total;
  // Gun Casemate
  @JsonKey(name: 'casemate')
  final PediaDataShipsProfileArmourCasemate casemate;
  // Citadel
  @JsonKey(name: 'citadel')
  final PediaDataShipsProfileArmourCitadel citadel;
  // Armored Deck
  @JsonKey(name: 'deck')
  final PediaDataShipsProfileArmourDeck deck;
  // Forward and After Ends
  @JsonKey(name: 'extremities')
  final PediaDataShipsProfileArmourExtremities extremities;
  // Armor
  @JsonKey(name: 'range')
  final PediaDataShipsProfileArmourDeck range;

  static PediaDataShipsProfileArmour fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsProfileArmourFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileArmourToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileArmourDeck {
  PediaDataShipsProfileArmourDeck({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataShipsProfileArmourDeck fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsProfileArmourDeckFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileArmourDeckToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileArmourExtremities {
  PediaDataShipsProfileArmourExtremities({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataShipsProfileArmourExtremities fromJson(
      Map<String, dynamic> json) {
    return _$PediaDataShipsProfileArmourExtremitiesFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileArmourExtremitiesToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileArmourRange {
  PediaDataShipsProfileArmourRange({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataShipsProfileArmourRange fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsProfileArmourRangeFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileArmourRangeToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileArmourCitadel {
  PediaDataShipsProfileArmourCitadel({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataShipsProfileArmourCitadel fromJson(
      Map<String, dynamic> json) {
    return _$PediaDataShipsProfileArmourCitadelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileArmourCitadelToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileArmourCasemate {
  PediaDataShipsProfileArmourCasemate({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataShipsProfileArmourCasemate fromJson(
      Map<String, dynamic> json) {
    return _$PediaDataShipsProfileArmourCasemateFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileArmourCasemateToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileAntiAircraft {
  PediaDataShipsProfileAntiAircraft({
    @required this.defense,
    @required this.slots,
  });
  // Anti-aircraft effectiveness
  @JsonKey(name: 'defense')
  final num defense;
  // Gun slots
  @JsonKey(name: 'slots')
  final PediaDataShipsProfileAntiAircraftSlots slots;

  static PediaDataShipsProfileAntiAircraft fromJson(Map<String, dynamic> json) {
    return _$PediaDataShipsProfileAntiAircraftFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileAntiAircraftToJson(this);
  }
}

@JsonSerializable()
class PediaDataShipsProfileAntiAircraftSlots {
  PediaDataShipsProfileAntiAircraftSlots({
    @required this.avgDamage,
    @required this.caliber,
    @required this.distance,
    @required this.guns,
    @required this.name,
  });
  // Average damage per second
  @JsonKey(name: 'avg_damage')
  final num avgDamage;
  // Caliber
  @JsonKey(name: 'caliber')
  final num caliber;
  // Firing range (km)
  @JsonKey(name: 'distance')
  final num distance;
  // Number of guns
  @JsonKey(name: 'guns')
  final num guns;
  // Gun name
  @JsonKey(name: 'name')
  final String name;

  static PediaDataShipsProfileAntiAircraftSlots fromJson(
      Map<String, dynamic> json) {
    return _$PediaDataShipsProfileAntiAircraftSlotsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataShipsProfileAntiAircraftSlotsToJson(this);
  }
}
