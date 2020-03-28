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
    antiAircraft: json['anti_aircraft'] == null
        ? null
        : PediaDataAntiAircraft.fromJson(
            json['anti_aircraft'] as Map<String, dynamic>),
    armour: json['armour'] == null
        ? null
        : PediaDataArmour.fromJson(json['armour'] as Map<String, dynamic>),
    artillery: json['artillery'] == null
        ? null
        : PediaDataArtillery.fromJson(
            json['artillery'] as Map<String, dynamic>),
    atbas: json['atbas'] == null
        ? null
        : PediaDataAtbas.fromJson(json['atbas'] as Map<String, dynamic>),
    battleLevelRangeMax: json['battle_level_range_max'] as num,
    battleLevelRangeMin: json['battle_level_range_min'] as num,
    concealment: json['concealment'] == null
        ? null
        : PediaDataConcealment.fromJson(
            json['concealment'] as Map<String, dynamic>),
    diveBomber: json['dive_bomber'] == null
        ? null
        : PediaDataDiveBomber.fromJson(
            json['dive_bomber'] as Map<String, dynamic>),
    engine: json['engine'] == null
        ? null
        : PediaDataEngine.fromJson(json['engine'] as Map<String, dynamic>),
    fighters: json['fighters'] == null
        ? null
        : PediaDataFighters.fromJson(json['fighters'] as Map<String, dynamic>),
    fireControl: json['fire_control'] == null
        ? null
        : PediaDataFireControl.fromJson(
            json['fire_control'] as Map<String, dynamic>),
    flightControl: json['flight_control'] == null
        ? null
        : PediaDataFlightControl.fromJson(
            json['flight_control'] as Map<String, dynamic>),
    hull: json['hull'] == null
        ? null
        : PediaDataHull.fromJson(json['hull'] as Map<String, dynamic>),
    mobility: json['mobility'] == null
        ? null
        : PediaDataMobility.fromJson(json['mobility'] as Map<String, dynamic>),
    torpedoBomber: json['torpedo_bomber'] == null
        ? null
        : PediaDataTorpedoBomber.fromJson(
            json['torpedo_bomber'] as Map<String, dynamic>),
    torpedoes: json['torpedoes'] == null
        ? null
        : PediaDataTorpedoes.fromJson(
            json['torpedoes'] as Map<String, dynamic>),
    weaponry: json['weaponry'] == null
        ? null
        : PediaDataWeaponry.fromJson(json['weaponry'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataShipsDefaultProfileToJson(
        PediaDataShipsDefaultProfile instance) =>
    <String, dynamic>{
      'anti_aircraft': instance.antiAircraft,
      'armour': instance.armour,
      'artillery': instance.artillery,
      'atbas': instance.atbas,
      'battle_level_range_max': instance.battleLevelRangeMax,
      'battle_level_range_min': instance.battleLevelRangeMin,
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
