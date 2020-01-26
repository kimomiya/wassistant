import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'clan_model.g.dart';

@JsonSerializable()
class ClanModel {
  ClanModel({
    @required this.clanModelId,
    @required this.createdAt,
    @required this.membersCount,
    @required this.name,
    @required this.tag,
  });

  factory ClanModel.fromJson(Map<String, dynamic> json) {
    return _$ClanModelFromJson(json);
  }

  /// Clan id
  @JsonKey(name: 'clanModel_id')
  final int clanModelId;

  /// Clan creation date
  @JsonKey(name: 'created_at')
  final int createdAt;

  /// Number of clanModel members
  @JsonKey(name: 'members_count')
  final int membersCount;

  /// Clan name
  final String name;

  /// Clan tag
  final String tag;

  Map<String, dynamic> toJson() => _$ClanModelToJson(this);
}
