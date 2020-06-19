// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaHistoryModel _$PediaHistoryModelFromJson(Map<String, dynamic> json) {
  return PediaHistoryModel(
    history: (json['history'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$PediaHistoryModelToJson(PediaHistoryModel instance) =>
    <String, dynamic>{
      'history': instance.history,
    };
