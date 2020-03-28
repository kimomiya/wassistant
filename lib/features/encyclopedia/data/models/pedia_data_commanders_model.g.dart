// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_commanders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaCommanders _$PediaCommandersFromJson(Map<String, dynamic> json) {
  return PediaCommanders(
    baseTrainingHirePrice: json['base_training_hire_price'] as num,
    baseTrainingLevel: json['base_training_level'] as num,
    firstNames:
        (json['first_names'] as List)?.map((e) => e as String)?.toList(),
    goldRetrainingPrice: json['gold_retraining_price'] as num,
    goldTrainingHirePrice: json['gold_training_hire_price'] as num,
    goldTrainingLevel: json['gold_training_level'] as num,
    icons: json['icons'] == null
        ? null
        : PediaCommandersIcons.fromJson(json['icons'] as Map<String, dynamic>),
    isRetrainable: json['is_retrainable'] as bool,
    lastNames: (json['last_names'] as List)?.map((e) => e as String)?.toList(),
    moneyRetrainingPrice: json['money_retraining_price'] as num,
    moneyTrainingHirePrice: json['money_training_hire_price'] as num,
    moneyTrainingLevel: json['money_training_level'] as num,
    nation: json['nation'] as String,
  );
}

Map<String, dynamic> _$PediaCommandersToJson(PediaCommanders instance) =>
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

PediaCommandersIcons _$PediaCommandersIconsFromJson(Map<String, dynamic> json) {
  return PediaCommandersIcons(
    one: json['1'] as String,
    eight: json['8'] as String,
    fourteen: json['14'] as String,
  );
}

Map<String, dynamic> _$PediaCommandersIconsToJson(
        PediaCommandersIcons instance) =>
    <String, dynamic>{
      '1': instance.one,
      '8': instance.eight,
      '14': instance.fourteen,
    };
