import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_json_data.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/pedia_history.dart';

part 'pedia_history_model.g.dart';

@JsonSerializable()
class PediaHistoryModel extends SearchPediaHistory implements PediaJsonData {
  const PediaHistoryModel({@required this.history});

  @override
  factory PediaHistoryModel.fromJson(Map<String, dynamic> json) {
    return _$PediaHistoryModelFromJson(json);
  }

  @override
  final List<String> history;

  @override
  Map<String, dynamic> toJson() => _$PediaHistoryModelToJson(this);
}
