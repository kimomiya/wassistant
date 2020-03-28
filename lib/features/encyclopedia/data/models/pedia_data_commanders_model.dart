import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/pedia_data.dart';

part 'pedia_data_commanders_model.g.dart';

@JsonSerializable()
class PediaCommanders extends PediaDataInterface {
  PediaCommanders({
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

  // Basic training cost
  @JsonKey(name: 'base_training_hire_price')
  final num baseTrainingHirePrice;
  // Basic training level
  @JsonKey(name: 'base_training_level')
  final num baseTrainingLevel;
  // Commanders' first names
  @JsonKey(name: 'first_names')
  final List<String> firstNames;
  // Retraining cost in doubloons
  @JsonKey(name: 'gold_retraining_price')
  final num goldRetrainingPrice;
  // Training cost in gold
  @JsonKey(name: 'gold_training_hire_price')
  final num goldTrainingHirePrice;
  // Commander training level purchased for doubloons
  @JsonKey(name: 'gold_training_level')
  final num goldTrainingLevel;
  /* The list of the Commander images:
  // 1—URL to the image of the Commander with 1–7 skill points;
  // 8—URL to the image of the Commander with 8–13 skill points;
  // 14—URL to the image of the Commander with 14–20 skill points;.
  // If only the value for the key 1 is specified, the Commander has not earned skill points yet.
  */
  @JsonKey(name: 'icons')
  final PediaCommandersIcons icons;
  // Indicates if the skill is preserved after retraining
  @JsonKey(name: 'is_retrainable')
  final bool isRetrainable;
  // Commanders' last names
  @JsonKey(name: 'last_names')
  final List<String> lastNames;
  // Retraining cost in credits
  @JsonKey(name: 'money_retraining_price')
  final num moneyRetrainingPrice;
  // Training cost in credits
  @JsonKey(name: 'money_training_hire_price')
  final num moneyTrainingHirePrice;
  // Commander training level purchased for credits
  @JsonKey(name: 'money_training_level')
  final num moneyTrainingLevel;
  // Nation
  @JsonKey(name: 'nation')
  final String nation;

  static PediaCommanders fromJson(Map<String, dynamic> json) {
    return _$PediaCommandersFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaCommanders instance) {
    return _$PediaCommandersToJson(instance);
  }
}

@JsonSerializable()
class PediaCommandersIcons extends Equatable {
  PediaCommandersIcons({
    @required this.one,
    @required this.eight,
    @required this.fourteen,
  });

  @JsonKey(name: '1')
  final String one;
  @JsonKey(name: '8')
  final String eight;
  @JsonKey(name: '14')
  final String fourteen;

  static PediaCommandersIcons fromJson(Map<String, dynamic> json) {
    return _$PediaCommandersIconsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaCommandersIconsToJson(this);
  }

  @override
  List<Object> get props => [
        one,
        eight,
        fourteen,
      ];
}
