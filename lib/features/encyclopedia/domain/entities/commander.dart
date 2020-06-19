import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PediaCommander extends Equatable {
  const PediaCommander({
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
  final num baseTrainingHirePrice;
  // Basic training level
  final num baseTrainingLevel;
  // Commanders' first names
  final List<String> firstNames;
  // Retraining cost in doubloons
  final num goldRetrainingPrice;
  // Training cost in gold
  final num goldTrainingHirePrice;
  // Commander training level purchased for doubloons
  final num goldTrainingLevel;
  /* The list of the Commander images:
  // 1—URL to the image of the Commander with 1–7 skill points;
  // 8—URL to the image of the Commander with 8–13 skill points;
  // 14—URL to the image of the Commander with 14–20 skill points;.
  // If only the value for the key 1 is specified, the Commander has not earned skill points yet.
  */
  final PediaCommandersIcons icons;
  // Indicates if the skill is preserved after retraining
  final bool isRetrainable;
  // Commanders' last names
  final List<String> lastNames;
  // Retraining cost in credits
  final num moneyRetrainingPrice;
  // Training cost in credits
  final num moneyTrainingHirePrice;
  // Commander training level purchased for credits
  final num moneyTrainingLevel;
  // Nation
  final String nation;

  @override
  List<Object> get props => [
        baseTrainingHirePrice,
        baseTrainingLevel,
        firstNames,
        goldRetrainingPrice,
        goldTrainingHirePrice,
        goldTrainingLevel,
        icons,
        isRetrainable,
        lastNames,
        moneyRetrainingPrice,
        moneyTrainingHirePrice,
        moneyTrainingLevel,
        nation,
      ];
}

class PediaCommandersIcons extends Equatable {
  const PediaCommandersIcons({
    @required this.one,
    @required this.eight,
    @required this.fourteen,
  });

  final String one;
  final String eight;
  final String fourteen;

  @override
  List<Object> get props => [
        one,
        eight,
        fourteen,
      ];
}
