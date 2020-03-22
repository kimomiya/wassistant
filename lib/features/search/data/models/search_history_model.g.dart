// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchHistoryModel _$SearchHistoryModelFromJson(Map<String, dynamic> json) {
  return SearchHistoryModel(
    history: (json['history'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$SearchHistoryModelToJson(SearchHistoryModel instance) =>
    <String, dynamic>{
      'history': instance.history,
    };
