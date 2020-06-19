import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/profile/pedia_data_armour.dart';

import '../pedia_json_data.dart';

part 'pedia_data_armour_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataArmourModel extends PediaDataArmour implements PediaJsonData {
  const PediaDataArmourModel({
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
  @override
  final num floodDamage;
  // Torpedo Protection. Flooding Risk Reduction (%)
  @override
  final num floodProb;
  // Hit points
  @override
  final num health;
  // Armor protection (%)
  @override
  final num total;
  // Gun Casemate
  @override
  final PediaDataArmourCasemateModel casemate;
  // Citadel
  @override
  final PediaDataArmourCitadelModel citadel;
  // Armored Deck
  @override
  final PediaDataArmourDeckModel deck;
  // Forward and After Ends
  @override
  final PediaDataArmourExtremitiesModel extremities;
  // Armor
  @override
  final PediaDataArmourRangeModel range;

  @override
  factory PediaDataArmourModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataArmourModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$PediaDataArmourModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataArmourDeckModel extends PediaDataArmourDeck
    implements PediaJsonData {
  const PediaDataArmourDeckModel({
    @required this.max,
    @required this.min,
  });
  @override
  final num max;
  @override
  final num min;

  @override
  factory PediaDataArmourDeckModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataArmourDeckModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$PediaDataArmourDeckModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataArmourExtremitiesModel extends PediaDataArmourExtremities
    implements PediaJsonData {
  const PediaDataArmourExtremitiesModel({
    @required this.max,
    @required this.min,
  });
  @override
  final num max;
  @override
  final num min;

  @override
  factory PediaDataArmourExtremitiesModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataArmourExtremitiesModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() =>
      _$PediaDataArmourExtremitiesModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataArmourRangeModel extends PediaDataArmourRange
    implements PediaJsonData {
  const PediaDataArmourRangeModel({
    @required this.max,
    @required this.min,
  });
  @override
  final num max;
  @override
  final num min;

  @override
  factory PediaDataArmourRangeModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataArmourRangeModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$PediaDataArmourRangeModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataArmourCitadelModel extends PediaDataArmourCitadel
    implements PediaJsonData {
  const PediaDataArmourCitadelModel({
    @required this.max,
    @required this.min,
  });
  @override
  final num max;
  @override
  final num min;

  @override
  factory PediaDataArmourCitadelModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataArmourCitadelModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$PediaDataArmourCitadelModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaDataArmourCasemateModel extends PediaDataArmourCasemate
    implements PediaJsonData {
  const PediaDataArmourCasemateModel({
    @required this.max,
    @required this.min,
  });
  @override
  final num max;
  @override
  final num min;

  @override
  factory PediaDataArmourCasemateModel.fromJson(Map<String, dynamic> json) {
    return _$PediaDataArmourCasemateModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$PediaDataArmourCasemateModelToJson(this);
}
