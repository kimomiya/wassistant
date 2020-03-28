import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'pedia_data_armour_model.g.dart';

@JsonSerializable()
class PediaDataArmour extends Equatable {
  PediaDataArmour({
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
  @JsonKey(name: 'flood_damage')
  final num floodDamage;
  // Torpedo Protection. Flooding Risk Reduction (%)
  @JsonKey(name: 'flood_prob')
  final num floodProb;
  // Hit points
  @JsonKey(name: 'health')
  final num health;
  // Armor protection (%)
  @JsonKey(name: 'total')
  final num total;
  // Gun Casemate
  @JsonKey(name: 'casemate')
  final PediaDataArmourCasemate casemate;
  // Citadel
  @JsonKey(name: 'citadel')
  final PediaDataArmourCitadel citadel;
  // Armored Deck
  @JsonKey(name: 'deck')
  final PediaDataArmourDeck deck;
  // Forward and After Ends
  @JsonKey(name: 'extremities')
  final PediaDataArmourExtremities extremities;
  // Armor
  @JsonKey(name: 'range')
  final PediaDataArmourRange range;

  static PediaDataArmour fromJson(Map<String, dynamic> json) {
    return _$PediaDataArmourFromJson(json);
  }

  static Map<String, dynamic> toJson(PediaDataArmour instance) {
    return _$PediaDataArmourToJson(instance);
  }

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

@JsonSerializable()
class PediaDataArmourDeck extends Equatable {
  PediaDataArmourDeck({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataArmourDeck fromJson(Map<String, dynamic> json) {
    return _$PediaDataArmourDeckFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataArmourDeckToJson(this);
  }

  @override
  List<Object> get props => [
        max,
        min,
      ];
}

@JsonSerializable()
class PediaDataArmourExtremities extends Equatable {
  PediaDataArmourExtremities({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataArmourExtremities fromJson(Map<String, dynamic> json) {
    return _$PediaDataArmourExtremitiesFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataArmourExtremitiesToJson(this);
  }

  @override
  List<Object> get props => [
        max,
        min,
      ];
}

@JsonSerializable()
class PediaDataArmourRange extends Equatable {
  PediaDataArmourRange({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataArmourRange fromJson(Map<String, dynamic> json) {
    return _$PediaDataArmourRangeFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataArmourRangeToJson(this);
  }

  @override
  List<Object> get props => [
        max,
        min,
      ];
}

@JsonSerializable()
class PediaDataArmourCitadel extends Equatable {
  PediaDataArmourCitadel({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataArmourCitadel fromJson(Map<String, dynamic> json) {
    return _$PediaDataArmourCitadelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataArmourCitadelToJson(this);
  }

  @override
  List<Object> get props => [
        max,
        min,
      ];
}

@JsonSerializable()
class PediaDataArmourCasemate extends Equatable {
  PediaDataArmourCasemate({
    @required this.max,
    @required this.min,
  });
  @JsonKey(name: 'max')
  final num max;
  @JsonKey(name: 'min')
  final num min;

  static PediaDataArmourCasemate fromJson(Map<String, dynamic> json) {
    return _$PediaDataArmourCasemateFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaDataArmourCasemateToJson(this);
  }

  @override
  List<Object> get props => [
        max,
        min,
      ];
}
