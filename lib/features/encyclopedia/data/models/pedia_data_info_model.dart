import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/pedia_data.dart';

part 'pedia_data_info_model.g.dart';

@JsonSerializable()
class PediaInfo extends PediaDataInterface {
  PediaInfo({
    @required this.shipsUpdatedAt,
    @required this.shipTypes,
    @required this.language,
    @required this.shipModifications,
    @required this.shipModules,
    @required this.shipTypeImages,
    @required this.shipNations,
    @required this.gameVersion,
  });

  @JsonKey(name: 'ships_updated_at')
  final int shipsUpdatedAt;
  @JsonKey(name: 'ship_types')
  final Map<String, dynamic> shipTypes;
  @JsonKey(name: 'language')
  final Map<String, dynamic> language;
  @JsonKey(name: 'ship_modifications')
  final Map<String, dynamic> shipModifications;
  @JsonKey(name: 'ship_modules')
  final Map<String, dynamic> shipModules;
  @JsonKey(name: 'ship_type_images')
  final Map<String, dynamic> shipTypeImages;
  @JsonKey(name: 'ship_nations')
  final Map<String, dynamic> shipNations;
  @JsonKey(name: 'game_version')
  final String gameVersion;

  @override
  static PediaDataInterface fromJson(Map<String, dynamic> json) {
    return _$PediaInfoFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$PediaInfoToJson(this);
  }
}
