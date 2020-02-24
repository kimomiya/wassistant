import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/search_history.dart';

part 'search_history_model.g.dart';

@JsonSerializable()
class SearchHistoryModel extends SearchHistory {
  const SearchHistoryModel({@required this.history});

  factory SearchHistoryModel.fromJson(Map<String, dynamic> json) {
    return _$SearchHistoryModelFromJson(json);
  }

  @override
  final List<String> history;

  Map<String, dynamic> toJson() => _$SearchHistoryModelToJson(this);
}
