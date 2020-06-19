import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_json_data.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/commander_rank.dart';

part 'pedia_data_commander_rank_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaCommanderRankModel extends PediaCommanderRank
    implements PediaJsonData {
  const PediaCommanderRankModel({
    @required this.commonwealth,
    @required this.europe,
    @required this.italy,
    @required this.usa,
    @required this.panAsia,
    @required this.france,
    @required this.ussr,
    @required this.germany,
    @required this.uk,
    @required this.japan,
    @required this.panAmerica,
  });

  @override
  factory PediaCommanderRankModel.fromJson(Map<String, dynamic> json) {
    return _$PediaCommanderRanksModelFromJson(json);
  }

  @override
  final List<PediaCommanderRanksContentModel> commonwealth;

  @override
  final List<PediaCommanderRanksContentModel> europe;

  @override
  final List<PediaCommanderRanksContentModel> italy;

  @override
  final List<PediaCommanderRanksContentModel> usa;

  @override
  final List<PediaCommanderRanksContentModel> panAsia;

  @override
  final List<PediaCommanderRanksContentModel> france;

  @override
  final List<PediaCommanderRanksContentModel> ussr;

  @override
  final List<PediaCommanderRanksContentModel> germany;

  @override
  final List<PediaCommanderRanksContentModel> uk;

  @override
  final List<PediaCommanderRanksContentModel> japan;

  @override
  final List<PediaCommanderRanksContentModel> panAmerica;

  @override
  Map<String, dynamic> toJson() => _$PediaCommanderRanksModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PediaCommanderRanksContentModel extends PediaCommanderRanksContent
    implements PediaJsonData {
  const PediaCommanderRanksContentModel({
    @required this.experience,
    @required this.name,
    @required this.rank,
    @required this.names,
  });

  // Experience
  @override
  final num experience;
  // Name. ??? this is always null
  @override
  final String name;
  // Rank
  @override
  final num rank;
  // real name here
  @override
  final Map<String, String> names;

  @override
  factory PediaCommanderRanksContentModel.fromJson(Map<String, dynamic> json) {
    return _$PediaCommanderRanksContentModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() =>
      _$PediaCommanderRanksContentModelToJson(this);
}
