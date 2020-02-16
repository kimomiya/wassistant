// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_ships_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaShips _$PediaShipsFromJson(Map<String, dynamic> json) {
  return PediaShips(
    description: json['description'] as int,
    hasDemoProfile: json['has_demo_profile'] as bool,
    isPremium: json['is_premium'] as bool,
    isSpecial: json['is_special'] as bool,
    modSlots: json['mod_slots'] as num,
    name: json['name'] as String,
    nation: json['nation'] as String,
    nextShips: json['next_ships'] as Map<String, dynamic>,
    priceCredit: json['price_credit'] as num,
    priceGold: json['price_gold'] as num,
    shipId: json['ship_id'] as num,
    shipIdStr: json['ship_id_str'] as String,
    tier: json['tier'] as String,
    type: json['type'] as String,
    upgrades: (json['upgrades'] as List)?.map((e) => e as int)?.toList(),
    defaultProfile: json['default_profile'] == null
        ? null
        : PediaDataShipsDefaultProfile.fromJson(
            json['default_profile'] as Map<String, dynamic>),
    images: json['images'] == null
        ? null
        : PediaDataShipsImages.fromJson(json['images'] as Map<String, dynamic>),
    modules: json['modules'] == null
        ? null
        : PediaDataShipsModules.fromJson(
            json['modules'] as Map<String, dynamic>),
    modulesTree: (json['modules_tree'] as List)
        ?.map((e) => e == null
            ? null
            : PediaDataShipsModulesTree.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PediaShipsToJson(PediaShips instance) =>
    <String, dynamic>{
      'description': instance.description,
      'has_demo_profile': instance.hasDemoProfile,
      'is_premium': instance.isPremium,
      'is_special': instance.isSpecial,
      'mod_slots': instance.modSlots,
      'name': instance.name,
      'nation': instance.nation,
      'next_ships': instance.nextShips,
      'price_credit': instance.priceCredit,
      'price_gold': instance.priceGold,
      'ship_id': instance.shipId,
      'ship_id_str': instance.shipIdStr,
      'tier': instance.tier,
      'type': instance.type,
      'upgrades': instance.upgrades,
      'default_profile': instance.defaultProfile,
      'images': instance.images,
      'modules': instance.modules,
      'modules_tree': instance.modulesTree,
    };

PediaDataShipsDefaultProfile _$PediaDataShipsDefaultProfileFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsDefaultProfile(
    battleLevelRangeMax: json['battle_level_range_max'] as num,
    battleLevelRangeMin: json['battle_level_range_min'] as num,
    antiAircraft: json['anti_aircraft'] == null
        ? null
        : PediaDataShipsProfileAntiAircraft.fromJson(
            json['anti_aircraft'] as Map<String, dynamic>),
    armour: json['armour'] == null
        ? null
        : PediaDataShipsProfileArmour.fromJson(
            json['armour'] as Map<String, dynamic>),
    artillery: json['artillery'] == null
        ? null
        : PediaDataShipsProfileArtillery.fromJson(
            json['artillery'] as Map<String, dynamic>),
    atbas: json['atbas'] == null
        ? null
        : PediaDataShipsProfileAtbas.fromJson(
            json['atbas'] as Map<String, dynamic>),
    concealment: json['concealment'] == null
        ? null
        : PediaDataShipsProfileConcealment.fromJson(
            json['concealment'] as Map<String, dynamic>),
    diveBomber: json['dive_bomber'] == null
        ? null
        : PediaDataShipsProfileDiveBomber.fromJson(
            json['dive_bomber'] as Map<String, dynamic>),
    engine: json['engine'] == null
        ? null
        : PediaDataShipsProfileEngine.fromJson(
            json['engine'] as Map<String, dynamic>),
    fighters: json['fighters'] == null
        ? null
        : PediaDataShipsProfileFighters.fromJson(
            json['fighters'] as Map<String, dynamic>),
    fireControl: json['fire_control'] == null
        ? null
        : PediaDataShipsProfileFireControl.fromJson(
            json['fire_control'] as Map<String, dynamic>),
    flightControl: json['flight_control'] == null
        ? null
        : PediaDataShipsProfileFlightControl.fromJson(
            json['flight_control'] as Map<String, dynamic>),
    hull: json['hull'] == null
        ? null
        : PediaDataShipsProfileHull.fromJson(
            json['hull'] as Map<String, dynamic>),
    mobility: json['mobility'] == null
        ? null
        : PediaDataShipsProfileMobility.fromJson(
            json['mobility'] as Map<String, dynamic>),
    torpedoBomber: json['torpedo_bomber'] == null
        ? null
        : PediaDataShipsProfileTorpedoBomber.fromJson(
            json['torpedo_bomber'] as Map<String, dynamic>),
    torpedoes: json['torpedoes'] == null
        ? null
        : PediaDataShipsProfileTorpedoes.fromJson(
            json['torpedoes'] as Map<String, dynamic>),
    weaponry: json['weaponry'] == null
        ? null
        : PediaDataShipsProfileWeaponry.fromJson(
            json['weaponry'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataShipsDefaultProfileToJson(
        PediaDataShipsDefaultProfile instance) =>
    <String, dynamic>{
      'battle_level_range_max': instance.battleLevelRangeMax,
      'battle_level_range_min': instance.battleLevelRangeMin,
      'anti_aircraft': instance.antiAircraft,
      'armour': instance.armour,
      'artillery': instance.artillery,
      'atbas': instance.atbas,
      'concealment': instance.concealment,
      'dive_bomber': instance.diveBomber,
      'engine': instance.engine,
      'fighters': instance.fighters,
      'fire_control': instance.fireControl,
      'flight_control': instance.flightControl,
      'hull': instance.hull,
      'mobility': instance.mobility,
      'torpedo_bomber': instance.torpedoBomber,
      'torpedoes': instance.torpedoes,
      'weaponry': instance.weaponry,
    };

PediaDataShipsImages _$PediaDataShipsImagesFromJson(Map<String, dynamic> json) {
  return PediaDataShipsImages(
    contour: json['contour'] as String,
    large: json['large'] as String,
    medium: json['medium'] as String,
    small: json['small'] as String,
  );
}

Map<String, dynamic> _$PediaDataShipsImagesToJson(
        PediaDataShipsImages instance) =>
    <String, dynamic>{
      'contour': instance.contour,
      'large': instance.large,
      'medium': instance.medium,
      'small': instance.small,
    };

PediaDataShipsModules _$PediaDataShipsModulesFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsModules(
    artillery: (json['artillery'] as List)?.map((e) => e as int)?.toList(),
    diveBomber: (json['dive_bomber'] as List)?.map((e) => e as int)?.toList(),
    engine: (json['engine'] as List)?.map((e) => e as int)?.toList(),
    fighter: (json['fighter'] as List)?.map((e) => e as int)?.toList(),
    fireControl: (json['fire_control'] as List)?.map((e) => e as int)?.toList(),
    flightControl:
        (json['flight_control'] as List)?.map((e) => e as int)?.toList(),
    hull: (json['hull'] as List)?.map((e) => e as int)?.toList(),
    torpedoBomber:
        (json['torpedo_bomber'] as List)?.map((e) => e as int)?.toList(),
    torpedoes: (json['torpedoes'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$PediaDataShipsModulesToJson(
        PediaDataShipsModules instance) =>
    <String, dynamic>{
      'artillery': instance.artillery,
      'dive_bomber': instance.diveBomber,
      'engine': instance.engine,
      'fighter': instance.fighter,
      'fire_control': instance.fireControl,
      'flight_control': instance.flightControl,
      'hull': instance.hull,
      'torpedo_bomber': instance.torpedoBomber,
      'torpedoes': instance.torpedoes,
    };

PediaDataShipsModulesTree _$PediaDataShipsModulesTreeFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsModulesTree(
    isDefault: json['is_default'] as bool,
    moduleId: json['module_id'] as num,
    moduleIdStr: json['module_id_str'] as String,
    name: json['name'] as String,
    nextModules: (json['next_modules'] as List)?.map((e) => e as int)?.toList(),
    nextShips: (json['next_ships'] as List)?.map((e) => e as int)?.toList(),
    priceCredit: json['price_credit'] as num,
    priceXp: json['price_xp'] as num,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$PediaDataShipsModulesTreeToJson(
        PediaDataShipsModulesTree instance) =>
    <String, dynamic>{
      'is_default': instance.isDefault,
      'module_id': instance.moduleId,
      'module_id_str': instance.moduleIdStr,
      'name': instance.name,
      'next_modules': instance.nextModules,
      'next_ships': instance.nextShips,
      'price_credit': instance.priceCredit,
      'price_xp': instance.priceXp,
      'type': instance.type,
    };

PediaDataShipsProfileWeaponry _$PediaDataShipsProfileWeaponryFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileWeaponry(
    aircraft: json['aircraft'] as num,
    antiAircraft: json['anti_aircraft'] as num,
    artillery: json['artillery'] as num,
    torpedoes: json['torpedoes'] as num,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileWeaponryToJson(
        PediaDataShipsProfileWeaponry instance) =>
    <String, dynamic>{
      'aircraft': instance.aircraft,
      'anti_aircraft': instance.antiAircraft,
      'artillery': instance.artillery,
      'torpedoes': instance.torpedoes,
    };

PediaDataShipsProfileTorpedoes _$PediaDataShipsProfileTorpedoesFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileTorpedoes(
    distance: json['distance'] as num,
    maxDamage: json['max_damage'] as num,
    reloadTime: json['reload_time'] as num,
    rotationTime: json['rotation_time'] as num,
    torpedoName: json['torpedo_name'] as String,
    torpedoSpeed: json['torpedo_speed'] as num,
    torpedoesId: json['torpedoes_id'] as num,
    torpedoesIdStr: json['torpedoes_id_str'] as String,
    visibilityDist: json['visibility_dist'] as num,
    slots: json['slots'] == null
        ? null
        : PediaDataShipsProfileTorpedoesSlots.fromJson(
            json['slots'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataShipsProfileTorpedoesToJson(
        PediaDataShipsProfileTorpedoes instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'max_damage': instance.maxDamage,
      'reload_time': instance.reloadTime,
      'rotation_time': instance.rotationTime,
      'torpedo_name': instance.torpedoName,
      'torpedo_speed': instance.torpedoSpeed,
      'torpedoes_id': instance.torpedoesId,
      'torpedoes_id_str': instance.torpedoesIdStr,
      'visibility_dist': instance.visibilityDist,
      'slots': instance.slots,
    };

PediaDataShipsProfileTorpedoesSlots
    _$PediaDataShipsProfileTorpedoesSlotsFromJson(Map<String, dynamic> json) {
  return PediaDataShipsProfileTorpedoesSlots(
    barrels: json['barrels'] as num,
    caliber: json['caliber'] as num,
    guns: json['guns'] as num,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileTorpedoesSlotsToJson(
        PediaDataShipsProfileTorpedoesSlots instance) =>
    <String, dynamic>{
      'barrels': instance.barrels,
      'caliber': instance.caliber,
      'guns': instance.guns,
      'name': instance.name,
    };

PediaDataShipsProfileTorpedoBomber _$PediaDataShipsProfileTorpedoBomberFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileTorpedoBomber(
    cruiseSpeed: json['cruise_speed'] as num,
    gunnerDamage: json['gunner_damage'] as num,
    maxDamage: json['max_damage'] as num,
    maxHealth: json['max_health'] as num,
    name: json['name'] as String,
    planeLevel: json['plane_level'] as num,
    prepareTime: json['prepare_time'] as num,
    squadrons: json['squadrons'] as num,
    torpedoBomberId: json['torpedo_bomber_id'] as num,
    torpedoBomberIdStr: json['torpedo_bomber_id_str'] as String,
    torpedoDamage: json['torpedo_damage'] as num,
    torpedoDistance: json['torpedo_distance'] as num,
    torpedoMaxSpeed: json['torpedo_max_speed'] as num,
    torpedoName: json['torpedo_name'] as String,
    countInSquadron: json['count_in_squadron'] == null
        ? null
        : PediaDataShipsProfileTorpedoBomberCountInSquadron.fromJson(
            json['count_in_squadron'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataShipsProfileTorpedoBomberToJson(
        PediaDataShipsProfileTorpedoBomber instance) =>
    <String, dynamic>{
      'cruise_speed': instance.cruiseSpeed,
      'gunner_damage': instance.gunnerDamage,
      'max_damage': instance.maxDamage,
      'max_health': instance.maxHealth,
      'name': instance.name,
      'plane_level': instance.planeLevel,
      'prepare_time': instance.prepareTime,
      'squadrons': instance.squadrons,
      'torpedo_bomber_id': instance.torpedoBomberId,
      'torpedo_bomber_id_str': instance.torpedoBomberIdStr,
      'torpedo_damage': instance.torpedoDamage,
      'torpedo_distance': instance.torpedoDistance,
      'torpedo_max_speed': instance.torpedoMaxSpeed,
      'torpedo_name': instance.torpedoName,
      'count_in_squadron': instance.countInSquadron,
    };

PediaDataShipsProfileTorpedoBomberCountInSquadron
    _$PediaDataShipsProfileTorpedoBomberCountInSquadronFromJson(
        Map<String, dynamic> json) {
  return PediaDataShipsProfileTorpedoBomberCountInSquadron(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileTorpedoBomberCountInSquadronToJson(
        PediaDataShipsProfileTorpedoBomberCountInSquadron instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataShipsProfileMobility _$PediaDataShipsProfileMobilityFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileMobility(
    maxSpeed: json['max_speed'] as num,
    rudderTime: json['rudder_time'] as num,
    total: json['total'] as num,
    turningRadius: json['turning_radius'] as num,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileMobilityToJson(
        PediaDataShipsProfileMobility instance) =>
    <String, dynamic>{
      'max_speed': instance.maxSpeed,
      'rudder_time': instance.rudderTime,
      'total': instance.total,
      'turning_radius': instance.turningRadius,
    };

PediaDataShipsProfileHull _$PediaDataShipsProfileHullFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileHull(
    antiAircraftBarrels: json['anti_aircraft_barrels'] as num,
    artilleryBarrels: json['artillery_barrels'] as num,
    atbaBarrels: json['atba_barrels'] as num,
    health: json['health'] as num,
    hullId: json['hull_id'] as num,
    hullIdStr: json['hull_id_str'] as String,
    planesAmount: json['planes_amount'] as num,
    torpedoesBarrels: json['torpedoes_barrels'] as num,
    range: json['range'] == null
        ? null
        : PediaDataShipsProfileHullRange.fromJson(
            json['range'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataShipsProfileHullToJson(
        PediaDataShipsProfileHull instance) =>
    <String, dynamic>{
      'anti_aircraft_barrels': instance.antiAircraftBarrels,
      'artillery_barrels': instance.artilleryBarrels,
      'atba_barrels': instance.atbaBarrels,
      'health': instance.health,
      'hull_id': instance.hullId,
      'hull_id_str': instance.hullIdStr,
      'planes_amount': instance.planesAmount,
      'torpedoes_barrels': instance.torpedoesBarrels,
      'range': instance.range,
    };

PediaDataShipsProfileHullRange _$PediaDataShipsProfileHullRangeFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileHullRange(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileHullRangeToJson(
        PediaDataShipsProfileHullRange instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataShipsProfileFlightControl _$PediaDataShipsProfileFlightControlFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileFlightControl(
    bomberSquadrons: json['bomber_squadrons'] as num,
    fighterSquadrons: json['fighter_squadrons'] as num,
    flightControlId: json['flight_control_id'] as num,
    flightControlIdStr: json['flight_control_id_str'] as String,
    torpedoSquadrons: json['torpedo_squadrons'] as num,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileFlightControlToJson(
        PediaDataShipsProfileFlightControl instance) =>
    <String, dynamic>{
      'bomber_squadrons': instance.bomberSquadrons,
      'fighter_squadrons': instance.fighterSquadrons,
      'flight_control_id': instance.flightControlId,
      'flight_control_id_str': instance.flightControlIdStr,
      'torpedo_squadrons': instance.torpedoSquadrons,
    };

PediaDataShipsProfileFireControl _$PediaDataShipsProfileFireControlFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileFireControl(
    distance: json['distance'] as num,
    distanceIncrease: json['distance_increase'] as num,
    fireControlId: json['fire_control_id'] as num,
    fireControlIdStr: json['fire_control_id_str'] as String,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileFireControlToJson(
        PediaDataShipsProfileFireControl instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'distance_increase': instance.distanceIncrease,
      'fire_control_id': instance.fireControlId,
      'fire_control_id_str': instance.fireControlIdStr,
    };

PediaDataShipsProfileFighters _$PediaDataShipsProfileFightersFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileFighters(
    avgDamage: json['avg_damage'] as num,
    cruiseSpeed: json['cruise_speed'] as num,
    fightersId: json['fighters_id'] as num,
    fightersIdStr: json['fighters_id_str'] as String,
    gunnerDamage: json['gunner_damage'] as num,
    maxAmmo: json['max_ammo'] as num,
    maxHealth: json['max_health'] as num,
    name: json['name'] as String,
    planeLevel: json['plane_level'] as num,
    prepareTime: json['prepare_time'] as num,
    squadrons: json['squadrons'] as num,
    countInSquadron: json['count_in_squadron'] == null
        ? null
        : PediaDataShipsProfileFightersCountInSquadron.fromJson(
            json['count_in_squadron'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataShipsProfileFightersToJson(
        PediaDataShipsProfileFighters instance) =>
    <String, dynamic>{
      'avg_damage': instance.avgDamage,
      'cruise_speed': instance.cruiseSpeed,
      'fighters_id': instance.fightersId,
      'fighters_id_str': instance.fightersIdStr,
      'gunner_damage': instance.gunnerDamage,
      'max_ammo': instance.maxAmmo,
      'max_health': instance.maxHealth,
      'name': instance.name,
      'plane_level': instance.planeLevel,
      'prepare_time': instance.prepareTime,
      'squadrons': instance.squadrons,
      'count_in_squadron': instance.countInSquadron,
    };

PediaDataShipsProfileFightersCountInSquadron
    _$PediaDataShipsProfileFightersCountInSquadronFromJson(
        Map<String, dynamic> json) {
  return PediaDataShipsProfileFightersCountInSquadron(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileFightersCountInSquadronToJson(
        PediaDataShipsProfileFightersCountInSquadron instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataShipsProfileEngine _$PediaDataShipsProfileEngineFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileEngine(
    engineId: json['engine_id'] as num,
    engineIdStr: json['engine_id_str'] as String,
    maxSpeed: json['max_speed'] as num,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileEngineToJson(
        PediaDataShipsProfileEngine instance) =>
    <String, dynamic>{
      'engine_id': instance.engineId,
      'engine_id_str': instance.engineIdStr,
      'max_speed': instance.maxSpeed,
    };

PediaDataShipsProfileDiveBomber _$PediaDataShipsProfileDiveBomberFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileDiveBomber(
    bombBulletMass: json['bomb_bullet_mass'] as num,
    bombBurnProbability: json['bomb_burn_probability'] as num,
    bombDamage: json['bomb_damage'] as num,
    bombName: json['bomb_name'] as String,
    cruiseSpeed: json['cruise_speed'] as num,
    diveBomberId: json['dive_bomber_id'] as num,
    diveBomberIdStr: json['dive_bomber_id_str'] as String,
    gunnerDamage: json['gunner_damage'] as num,
    maxDamage: json['max_damage'] as num,
    maxHealth: json['max_health'] as num,
    name: json['name'] as String,
    planeLevel: json['plane_level'] as num,
    prepareTime: json['prepare_time'] as num,
    squadrons: json['squadrons'] as num,
    accuracy: json['accuracy'] == null
        ? null
        : PediaDataShipsProfileDiveBomberAccuracy.fromJson(
            json['accuracy'] as Map<String, dynamic>),
    countInSquadron: json['count_in_squadron'] == null
        ? null
        : PediaDataShipsProfileDiveBomberCountInSquadron.fromJson(
            json['count_in_squadron'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataShipsProfileDiveBomberToJson(
        PediaDataShipsProfileDiveBomber instance) =>
    <String, dynamic>{
      'bomb_bullet_mass': instance.bombBulletMass,
      'bomb_burn_probability': instance.bombBurnProbability,
      'bomb_damage': instance.bombDamage,
      'bomb_name': instance.bombName,
      'cruise_speed': instance.cruiseSpeed,
      'dive_bomber_id': instance.diveBomberId,
      'dive_bomber_id_str': instance.diveBomberIdStr,
      'gunner_damage': instance.gunnerDamage,
      'max_damage': instance.maxDamage,
      'max_health': instance.maxHealth,
      'name': instance.name,
      'plane_level': instance.planeLevel,
      'prepare_time': instance.prepareTime,
      'squadrons': instance.squadrons,
      'accuracy': instance.accuracy,
      'count_in_squadron': instance.countInSquadron,
    };

PediaDataShipsProfileDiveBomberCountInSquadron
    _$PediaDataShipsProfileDiveBomberCountInSquadronFromJson(
        Map<String, dynamic> json) {
  return PediaDataShipsProfileDiveBomberCountInSquadron(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileDiveBomberCountInSquadronToJson(
        PediaDataShipsProfileDiveBomberCountInSquadron instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataShipsProfileDiveBomberAccuracy
    _$PediaDataShipsProfileDiveBomberAccuracyFromJson(
        Map<String, dynamic> json) {
  return PediaDataShipsProfileDiveBomberAccuracy(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileDiveBomberAccuracyToJson(
        PediaDataShipsProfileDiveBomberAccuracy instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataShipsProfileConcealment _$PediaDataShipsProfileConcealmentFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileConcealment(
    detectDistanceByPlane: json['detect_distance_by_plane'] as num,
    detectDistanceByShip: json['detect_distance_by_ship'] as num,
    total: json['total'] as num,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileConcealmentToJson(
        PediaDataShipsProfileConcealment instance) =>
    <String, dynamic>{
      'detect_distance_by_plane': instance.detectDistanceByPlane,
      'detect_distance_by_ship': instance.detectDistanceByShip,
      'total': instance.total,
    };

PediaDataShipsProfileAtbas _$PediaDataShipsProfileAtbasFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileAtbas(
    distance: json['distance'] as num,
    slots: json['slots'] == null
        ? null
        : PediaDataShipsProfileAtbasSlots.fromJson(
            json['slots'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataShipsProfileAtbasToJson(
        PediaDataShipsProfileAtbas instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'slots': instance.slots,
    };

PediaDataShipsProfileAtbasSlots _$PediaDataShipsProfileAtbasSlotsFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileAtbasSlots(
    bulletMass: json['bullet_mass'] as num,
    bulletSpeed: json['bullet_speed'] as num,
    burnProbability: json['burn_probability'] as num,
    damage: json['damage'] as num,
    gunRate: json['gun_rate'] as num,
    name: json['name'] as String,
    shotDelay: json['shot_delay'] as num,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileAtbasSlotsToJson(
        PediaDataShipsProfileAtbasSlots instance) =>
    <String, dynamic>{
      'bullet_mass': instance.bulletMass,
      'bullet_speed': instance.bulletSpeed,
      'burn_probability': instance.burnProbability,
      'damage': instance.damage,
      'gun_rate': instance.gunRate,
      'name': instance.name,
      'shot_delay': instance.shotDelay,
      'type': instance.type,
    };

PediaDataShipsProfileArtillery _$PediaDataShipsProfileArtilleryFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileArtillery(
    artilleryId: json['artillery_id'] as num,
    artilleryIdStr: json['artillery_id_str'] as String,
    distance: json['distance'] as num,
    gunRate: json['gun_rate'] as num,
    maxDispersion: json['max_dispersion'] as num,
    rotationTime: json['rotation_time'] as num,
    shotDelay: json['shot_delay'] as num,
    shells: json['shells'] == null
        ? null
        : PediaDataShipsProfileArtilleryShells.fromJson(
            json['shells'] as Map<String, dynamic>),
    slots: json['slots'] == null
        ? null
        : PediaDataShipsProfileArtillerySlots.fromJson(
            json['slots'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataShipsProfileArtilleryToJson(
        PediaDataShipsProfileArtillery instance) =>
    <String, dynamic>{
      'artillery_id': instance.artilleryId,
      'artillery_id_str': instance.artilleryIdStr,
      'distance': instance.distance,
      'gun_rate': instance.gunRate,
      'max_dispersion': instance.maxDispersion,
      'rotation_time': instance.rotationTime,
      'shot_delay': instance.shotDelay,
      'shells': instance.shells,
      'slots': instance.slots,
    };

PediaDataShipsProfileArtillerySlots
    _$PediaDataShipsProfileArtillerySlotsFromJson(Map<String, dynamic> json) {
  return PediaDataShipsProfileArtillerySlots(
    barrels: json['barrels'] as num,
    guns: json['guns'] as num,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileArtillerySlotsToJson(
        PediaDataShipsProfileArtillerySlots instance) =>
    <String, dynamic>{
      'barrels': instance.barrels,
      'guns': instance.guns,
      'name': instance.name,
    };

PediaDataShipsProfileArtilleryShells
    _$PediaDataShipsProfileArtilleryShellsFromJson(Map<String, dynamic> json) {
  return PediaDataShipsProfileArtilleryShells(
    bulletMass: json['bullet_mass'] as num,
    bulletSpeed: json['bullet_speed'] as num,
    burnProbability: json['burn_probability'] as num,
    damage: json['damage'] as num,
    name: json['name'] as String,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileArtilleryShellsToJson(
        PediaDataShipsProfileArtilleryShells instance) =>
    <String, dynamic>{
      'bullet_mass': instance.bulletMass,
      'bullet_speed': instance.bulletSpeed,
      'burn_probability': instance.burnProbability,
      'damage': instance.damage,
      'name': instance.name,
      'type': instance.type,
    };

PediaDataShipsProfileArmour _$PediaDataShipsProfileArmourFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileArmour(
    floodDamage: json['flood_damage'] as num,
    floodProb: json['flood_prob'] as num,
    health: json['health'] as num,
    total: json['total'] as num,
    casemate: json['casemate'] == null
        ? null
        : PediaDataShipsProfileArmourCasemate.fromJson(
            json['casemate'] as Map<String, dynamic>),
    citadel: json['citadel'] == null
        ? null
        : PediaDataShipsProfileArmourCitadel.fromJson(
            json['citadel'] as Map<String, dynamic>),
    deck: json['deck'] == null
        ? null
        : PediaDataShipsProfileArmourDeck.fromJson(
            json['deck'] as Map<String, dynamic>),
    extremities: json['extremities'] == null
        ? null
        : PediaDataShipsProfileArmourExtremities.fromJson(
            json['extremities'] as Map<String, dynamic>),
    range: json['range'] == null
        ? null
        : PediaDataShipsProfileArmourDeck.fromJson(
            json['range'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataShipsProfileArmourToJson(
        PediaDataShipsProfileArmour instance) =>
    <String, dynamic>{
      'flood_damage': instance.floodDamage,
      'flood_prob': instance.floodProb,
      'health': instance.health,
      'total': instance.total,
      'casemate': instance.casemate,
      'citadel': instance.citadel,
      'deck': instance.deck,
      'extremities': instance.extremities,
      'range': instance.range,
    };

PediaDataShipsProfileArmourDeck _$PediaDataShipsProfileArmourDeckFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileArmourDeck(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileArmourDeckToJson(
        PediaDataShipsProfileArmourDeck instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataShipsProfileArmourExtremities
    _$PediaDataShipsProfileArmourExtremitiesFromJson(
        Map<String, dynamic> json) {
  return PediaDataShipsProfileArmourExtremities(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileArmourExtremitiesToJson(
        PediaDataShipsProfileArmourExtremities instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataShipsProfileArmourRange _$PediaDataShipsProfileArmourRangeFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileArmourRange(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileArmourRangeToJson(
        PediaDataShipsProfileArmourRange instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataShipsProfileArmourCitadel _$PediaDataShipsProfileArmourCitadelFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileArmourCitadel(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileArmourCitadelToJson(
        PediaDataShipsProfileArmourCitadel instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataShipsProfileArmourCasemate
    _$PediaDataShipsProfileArmourCasemateFromJson(Map<String, dynamic> json) {
  return PediaDataShipsProfileArmourCasemate(
    max: json['max'] as num,
    min: json['min'] as num,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileArmourCasemateToJson(
        PediaDataShipsProfileArmourCasemate instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

PediaDataShipsProfileAntiAircraft _$PediaDataShipsProfileAntiAircraftFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsProfileAntiAircraft(
    defense: json['defense'] as num,
    slots: json['slots'] == null
        ? null
        : PediaDataShipsProfileAntiAircraftSlots.fromJson(
            json['slots'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataShipsProfileAntiAircraftToJson(
        PediaDataShipsProfileAntiAircraft instance) =>
    <String, dynamic>{
      'defense': instance.defense,
      'slots': instance.slots,
    };

PediaDataShipsProfileAntiAircraftSlots
    _$PediaDataShipsProfileAntiAircraftSlotsFromJson(
        Map<String, dynamic> json) {
  return PediaDataShipsProfileAntiAircraftSlots(
    avgDamage: json['avg_damage'] as num,
    caliber: json['caliber'] as num,
    distance: json['distance'] as num,
    guns: json['guns'] as num,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$PediaDataShipsProfileAntiAircraftSlotsToJson(
        PediaDataShipsProfileAntiAircraftSlots instance) =>
    <String, dynamic>{
      'avg_damage': instance.avgDamage,
      'caliber': instance.caliber,
      'distance': instance.distance,
      'guns': instance.guns,
      'name': instance.name,
    };
