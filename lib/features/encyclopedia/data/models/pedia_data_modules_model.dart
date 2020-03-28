import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/pedia_data.dart';
import 'profile/pedia_data_artillery_model.dart';
import 'profile/pedia_data_dive_bomber_model.dart';
import 'profile/pedia_data_engine_model.dart';
import 'profile/pedia_data_fighters_model.dart';
import 'profile/pedia_data_fire_control_model.dart';
import 'profile/pedia_data_flight_control_model.dart';
import 'profile/pedia_data_hull_model.dart';
import 'profile/pedia_data_torpedo_bomber_model.dart';
import 'profile/pedia_data_torpedoes_model.dart';

part 'pedia_data_modules_model.g.dart';

@JsonSerializable()
class PediaModules extends PediaDataInterface {
  PediaModules({
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
  @JsonKey(name: 'image')
  final String image;

  @JsonKey(name: 'module_id')
  final num moduleId;

  @JsonKey(name: 'module_id_str')
  final String moduleIdStr;

  @JsonKey(name: 'name')
  final String name;

  // Cost in credits
  @JsonKey(name: 'price_credit')
  final num priceCredit;

  @JsonKey(name: 'tag')
  final String tag;

  @JsonKey(name: 'type')
  final String type;

  // Module parameters, values related to the module type
  @JsonKey(name: 'profile')
  final PeidaModulesProfile profile;

  static PediaModules fromJson(Map<String, dynamic> json) {
    return _$PediaModulesFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaModules instance) {
    return _$PediaModulesToJson(instance);
  }
}

@JsonSerializable()
class PeidaModulesProfile extends Equatable {
  PeidaModulesProfile({
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
  @JsonKey(name: 'artillery')
  final PediaDataArtillery artillery;
  // Secondary armament. If the module is absent on the ship, field value is null.

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

  @JsonKey(name: 'torpedo_bomber')
  final PediaDataTorpedoBomber torpedoBomber;
  // Torpedo tubes. If the module is absent on the ship, field value is null.
  @JsonKey(name: 'torpedoes')
  final PediaDataTorpedoes torpedoes;

  static PeidaModulesProfile fromJson(Map<String, dynamic> json) {
    return _$PeidaModulesProfileFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PeidaModulesProfileToJson(this);
  }

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
