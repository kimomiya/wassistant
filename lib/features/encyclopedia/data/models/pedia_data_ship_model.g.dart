// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_ship_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaShipModel _$PediaShipsModelFromJson(Map<String, dynamic> json) {
  return PediaShipModel(
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
        : PediaDataShipsDefaultProfileModel.fromJson(
            json['default_profile'] as Map<String, dynamic>),
    images: json['images'] == null
        ? null
        : PediaDataShipsImagesModel.fromJson(
            json['images'] as Map<String, dynamic>),
    modules: json['modules'] == null
        ? null
        : PediaDataShipsModulesModel.fromJson(
            json['modules'] as Map<String, dynamic>),
    modulesTree: (json['modules_tree'] as List)
        ?.map((e) => e == null
            ? null
            : PediaDataShipsModulesTreeModel.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PediaShipsModelToJson(PediaShipModel instance) =>
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

PediaDataShipsDefaultProfileModel _$PediaDataShipsDefaultProfileModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsDefaultProfileModel(
    antiAircraft: json['anti_aircraft'] == null
        ? null
        : PediaDataAntiAircraftModel.fromJson(
            json['anti_aircraft'] as Map<String, dynamic>),
    armour: json['armour'] == null
        ? null
        : PediaDataArmourModel.fromJson(json['armour'] as Map<String, dynamic>),
    artillery: json['artillery'] == null
        ? null
        : PediaDataArtilleryModel.fromJson(
            json['artillery'] as Map<String, dynamic>),
    atbas: json['atbas'] == null
        ? null
        : PediaDataAtbasModel.fromJson(json['atbas'] as Map<String, dynamic>),
    battleLevelRangeMax: json['battle_level_range_max'] as num,
    battleLevelRangeMin: json['battle_level_range_min'] as num,
    concealment: json['concealment'] == null
        ? null
        : PediaDataConcealmentModel.fromJson(
            json['concealment'] as Map<String, dynamic>),
    diveBomber: json['dive_bomber'] == null
        ? null
        : PediaDataDiveBomberModel.fromJson(
            json['dive_bomber'] as Map<String, dynamic>),
    engine: json['engine'] == null
        ? null
        : PediaDataEngineModel.fromJson(json['engine'] as Map<String, dynamic>),
    fighters: json['fighters'] == null
        ? null
        : PediaDataFightersModel.fromJson(
            json['fighters'] as Map<String, dynamic>),
    fireControl: json['fire_control'] == null
        ? null
        : PediaDataFireControlModel.fromJson(
            json['fire_control'] as Map<String, dynamic>),
    flightControl: json['flight_control'] == null
        ? null
        : PediaDataFlightControlModel.fromJson(
            json['flight_control'] as Map<String, dynamic>),
    hull: json['hull'] == null
        ? null
        : PediaDataHullModel.fromJson(json['hull'] as Map<String, dynamic>),
    mobility: json['mobility'] == null
        ? null
        : PediaDataMobilityModel.fromJson(
            json['mobility'] as Map<String, dynamic>),
    torpedoBomber: json['torpedo_bomber'] == null
        ? null
        : PediaDataTorpedoBomberModel.fromJson(
            json['torpedo_bomber'] as Map<String, dynamic>),
    torpedoes: json['torpedoes'] == null
        ? null
        : PediaDataTorpedoesModel.fromJson(
            json['torpedoes'] as Map<String, dynamic>),
    weaponry: json['weaponry'] == null
        ? null
        : PediaDataWeaponryModel.fromJson(
            json['weaponry'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PediaDataShipsDefaultProfileModelToJson(
        PediaDataShipsDefaultProfileModel instance) =>
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

PediaDataShipsImagesModel _$PediaDataShipsImagesModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsImagesModel(
    contour: json['contour'] as String,
    large: json['large'] as String,
    medium: json['medium'] as String,
    small: json['small'] as String,
  );
}

Map<String, dynamic> _$PediaDataShipsImagesModelToJson(
        PediaDataShipsImagesModel instance) =>
    <String, dynamic>{
      'contour': instance.contour,
      'large': instance.large,
      'medium': instance.medium,
      'small': instance.small,
    };

PediaDataShipsModulesModel _$PediaDataShipsModulesModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsModulesModel(
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

Map<String, dynamic> _$PediaDataShipsModulesModelToJson(
        PediaDataShipsModulesModel instance) =>
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

PediaDataShipsModulesTreeModel _$PediaDataShipsModulesTreeModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataShipsModulesTreeModel(
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

Map<String, dynamic> _$PediaDataShipsModulesTreeModelToJson(
        PediaDataShipsModulesTreeModel instance) =>
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
