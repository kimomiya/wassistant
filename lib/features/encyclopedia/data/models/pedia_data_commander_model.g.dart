// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_commander_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaCommanderModel _$PediaCommandersModelFromJson(Map<String, dynamic> json) {
  return PediaCommanderModel(
    baseTrainingHirePrice: json['base_training_hire_price'] as num,
    baseTrainingLevel: json['base_training_level'] as num,
    firstNames:
        (json['first_names'] as List)?.map((e) => e as String)?.toList(),
    goldRetrainingPrice: json['gold_retraining_price'] as num,
    goldTrainingHirePrice: json['gold_training_hire_price'] as num,
    goldTrainingLevel: json['gold_training_level'] as num,
    icons: json['icons'] == null
        ? null
        : PediaCommandersIconsModel.fromJson(
            json['icons'] as Map<String, dynamic>),
    isRetrainable: json['is_retrainable'] as bool,
    lastNames: (json['last_names'] as List)?.map((e) => e as String)?.toList(),
    moneyRetrainingPrice: json['money_retraining_price'] as num,
    moneyTrainingHirePrice: json['money_training_hire_price'] as num,
    moneyTrainingLevel: json['money_training_level'] as num,
    nation: json['nation'] as String,
  );
}

Map<String, dynamic> _$PediaCommandersModelToJson(
        PediaCommanderModel instance) =>
    <String, dynamic>{
      'base_training_hire_price': instance.baseTrainingHirePrice,
      'base_training_level': instance.baseTrainingLevel,
      'first_names': instance.firstNames,
      'gold_retraining_price': instance.goldRetrainingPrice,
      'gold_training_hire_price': instance.goldTrainingHirePrice,
      'gold_training_level': instance.goldTrainingLevel,
      'icons': instance.icons,
      'is_retrainable': instance.isRetrainable,
      'last_names': instance.lastNames,
      'money_retraining_price': instance.moneyRetrainingPrice,
      'money_training_hire_price': instance.moneyTrainingHirePrice,
      'money_training_level': instance.moneyTrainingLevel,
      'nation': instance.nation,
    };

PediaCommandersIconsModel _$PediaCommandersIconsModelFromJson(
    Map<String, dynamic> json) {
  return PediaCommandersIconsModel(
    one: json['one'] as String,
    eight: json['eight'] as String,
    fourteen: json['fourteen'] as String,
  );
}

Map<String, dynamic> _$PediaCommandersIconsModelToJson(
        PediaCommandersIconsModel instance) =>
    <String, dynamic>{
      'one': instance.one,
      'eight': instance.eight,
      'fourteen': instance.fourteen,
    };
