import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_json_data.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/commander.dart';

part 'pedia_data_commander_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaCommanderModel extends PediaCommander implements PediaJsonData {
  const PediaCommanderModel({
    @required this.baseTrainingHirePrice,
    @required this.baseTrainingLevel,
    @required this.firstNames,
    @required this.goldRetrainingPrice,
    @required this.goldTrainingHirePrice,
    @required this.goldTrainingLevel,
    @required this.icons,
    @required this.isRetrainable,
    @required this.lastNames,
    @required this.moneyRetrainingPrice,
    @required this.moneyTrainingHirePrice,
    @required this.moneyTrainingLevel,
    @required this.nation,
  });

  @override
  factory PediaCommanderModel.fromJson(Map<String, dynamic> json) {
    return _$PediaCommandersModelFromJson(json);
  }

  @override
  // Basic training cost
  final num baseTrainingHirePrice;
  @override
  // Basic training level
  final num baseTrainingLevel;
  @override
  // Commanders' first names
  final List<String> firstNames;
  @override
  // Retraining cost in doubloons
  final num goldRetrainingPrice;
  @override
  // Training cost in gold
  final num goldTrainingHirePrice;
  @override
  // Commander training level purchased for doubloons
  final num goldTrainingLevel;
  @override
  /* The list of the Commander images:
  // 1—URL to the image of the Commander with 1–7 skill points;
  // 8—URL to the image of the Commander with 8–13 skill points;
  // 14—URL to the image of the Commander with 14–20 skill points;.
  // If only the value for the key 1 is specified, the Commander has not earned skill points yet.
  */
  final PediaCommandersIconsModel icons;
  @override
  // Indicates if the skill is preserved after retraining
  final bool isRetrainable;
  @override
  // Commanders' last names
  final List<String> lastNames;
  @override
  // Retraining cost in credits
  final num moneyRetrainingPrice;
  @override
  // Training cost in credits
  final num moneyTrainingHirePrice;
  @override
  // Commander training level purchased for credits
  final num moneyTrainingLevel;
  @override
  // Nation
  final String nation;

  @override
  Map<String, dynamic> toJson() => _$PediaCommandersModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaCommandersIconsModel extends PediaCommandersIcons
    implements PediaJsonData {
  const PediaCommandersIconsModel({
    @required this.one,
    @required this.eight,
    @required this.fourteen,
  });

  @override
  factory PediaCommandersIconsModel.fromJson(Map<String, dynamic> json) {
    return _$PediaCommandersIconsModelFromJson(json);
  }

  @override
  final String one;
  @override
  final String eight;
  @override
  final String fourteen;

  @override
  Map<String, dynamic> toJson() => _$PediaCommandersIconsModelToJson(this);
}
