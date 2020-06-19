import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_json_data.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/info.dart';

part 'pedia_data_info_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaInfoModel extends PediaInfo implements PediaJsonData {
  const PediaInfoModel({
    @required this.shipsUpdatedAt,
    @required this.shipTypes,
    @required this.languages,
    @required this.shipModifications,
    @required this.shipModules,
    @required this.shipTypeImages,
    @required this.shipNations,
    @required this.gameVersion,
  });

  @override
  factory PediaInfoModel.fromJson(Map<String, dynamic> json) {
    return _$PediaInfoModelFromJson(json);
  }

  @override
  final int shipsUpdatedAt;
  @override
  final Map<String, dynamic> shipTypes;
  @override
  final Map<String, dynamic> languages;
  @override
  final Map<String, dynamic> shipModifications;
  @override
  final Map<String, dynamic> shipModules;
  @override
  final Map<String, dynamic> shipTypeImages;
  @override
  final Map<String, dynamic> shipNations;
  @override
  final String gameVersion;

  @override
  Map<String, dynamic> toJson() => _$PediaInfoModelToJson(this);
}
