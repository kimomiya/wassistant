import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PediaDataArmour extends Equatable {
  const PediaDataArmour({
    @required this.floodDamage,
    @required this.floodProb,
    @required this.health,
    @required this.total,
    @required this.casemate,
    @required this.citadel,
    @required this.deck,
    @required this.extremities,
    @required this.range,
  });
  // Torpedo Protection. Damage Reduction (%)
  final num floodDamage;
  // Torpedo Protection. Flooding Risk Reduction (%)
  final num floodProb;
  // Hit points
  final num health;
  // Armor protection (%)
  final num total;
  // Gun Casemate
  final PediaDataArmourCasemate casemate;
  // Citadel
  final PediaDataArmourCitadel citadel;
  // Armored Deck
  final PediaDataArmourDeck deck;
  // Forward and After Ends
  final PediaDataArmourExtremities extremities;
  // Armor
  final PediaDataArmourRange range;

  @override
  List<Object> get props => [
        floodDamage,
        floodProb,
        health,
        total,
        casemate,
        citadel,
        deck,
        extremities,
        range,
      ];
}

class PediaDataArmourDeck extends Equatable {
  const PediaDataArmourDeck({
    @required this.max,
    @required this.min,
  });
  final num max;
  final num min;

  @override
  List<Object> get props => [
        max,
        min,
      ];
}

class PediaDataArmourExtremities extends Equatable {
  const PediaDataArmourExtremities({
    @required this.max,
    @required this.min,
  });
  final num max;
  final num min;

  @override
  List<Object> get props => [
        max,
        min,
      ];
}

class PediaDataArmourRange extends Equatable {
  const PediaDataArmourRange({
    @required this.max,
    @required this.min,
  });
  final num max;
  final num min;

  @override
  List<Object> get props => [
        max,
        min,
      ];
}

class PediaDataArmourCitadel extends Equatable {
  const PediaDataArmourCitadel({
    @required this.max,
    @required this.min,
  });
  final num max;
  final num min;

  @override
  List<Object> get props => [
        max,
        min,
      ];
}

class PediaDataArmourCasemate extends Equatable {
  const PediaDataArmourCasemate({
    @required this.max,
    @required this.min,
  });
  final num max;
  final num min;

  @override
  List<Object> get props => [
        max,
        min,
      ];
}
