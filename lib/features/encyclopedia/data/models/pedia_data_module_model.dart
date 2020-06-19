import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_json_data.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/module.dart';

import 'profile/pedia_data_artillery_model.dart';
import 'profile/pedia_data_dive_bomber_model.dart';
import 'profile/pedia_data_engine_model.dart';
import 'profile/pedia_data_fighters_model.dart';
import 'profile/pedia_data_fire_control_model.dart';
import 'profile/pedia_data_flight_control_model.dart';
import 'profile/pedia_data_hull_model.dart';
import 'profile/pedia_data_torpedo_bomber_model.dart';
import 'profile/pedia_data_torpedoes_model.dart';

part 'pedia_data_module_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaModuleModel extends PediaModule implements PediaJsonData {
  const PediaModuleModel({
    @required this.image,
    @required this.moduleId,
    @required this.moduleIdStr,
    @required this.name,
    @required this.priceCredit,
    @required this.tag,
    @required this.type,
    @required this.profile,
  });

  @override
  factory PediaModuleModel.fromJson(Map<String, dynamic> json) {
    return _$PediaModulesModelFromJson(json);
  }

  // Image link
  @override
  final String image;

  @override
  final num moduleId;

  @override
  final String moduleIdStr;

  @override
  final String name;

  // Cost in credits
  @override
  final num priceCredit;

  @override
  final String tag;

  @override
  final String type;

  // Module parameters, values related to the module type
  @override
  final PeidaModulesProfileModel profile;

  @override
  Map<String, dynamic> toJson() => _$PediaModulesModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PeidaModulesProfileModel extends PeidaModulesProfile
    implements PediaJsonData {
  const PeidaModulesProfileModel({
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

  @override
  factory PeidaModulesProfileModel.fromJson(Map<String, dynamic> json) {
    return _$PeidaModulesProfileModelFromJson(json);
  }

  // Main battery. If the module is absent on the ship, field value is null.
  @override
  final PediaDataArtilleryModel artillery;
  // Secondary armament. If the module is absent on the ship, field value is null.

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
  final PediaDataTorpedoBomberModel torpedoBomber;
  // Torpedo tubes. If the module is absent on the ship, field value is null.
  @override
  final PediaDataTorpedoesModel torpedoes;

  @override
  Map<String, dynamic> toJson() => _$PeidaModulesProfileModelToJson(this);
}
