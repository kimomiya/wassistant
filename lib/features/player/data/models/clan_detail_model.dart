import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'clan_member_model.dart';

part 'clan_detail_model.g.dart';

@JsonSerializable()
class ClanDetailModel {
  const ClanDetailModel({
    @required this.clanId,
    @required this.createdAt,
    @required this.creatorId,
    @required this.creatorName,
    @required this.description,
    @required this.isClanDisbanded,
    @required this.leaderId,
    @required this.leaderName,
    @required this.membersCount,
    @required this.name,
    @required this.oldName,
    @required this.oldTag,
    @required this.renamedAt,
    @required this.tag,
    @required this.updatedAt,
    @required this.members,
  });

  factory ClanDetailModel.fromJson(Map<String, dynamic> json) {
    return _$ClanDetailModelFromJson(json);
  }

  /// Clan id
  @JsonKey(name: 'clan_id')
  final int clanId;

  /// Clan creation date
  @JsonKey(name: 'created_at')
  final int createdAt;

  /// Clan creator id
  @JsonKey(name: 'creator_id')
  final int creatorId;

  /// Clan creator's name
  @JsonKey(name: 'creator_name')
  final String creatorName;

  /// Clan description
  final String description;

  /// Clan has been deleted.
  /// The deleted clan data contains valid values
  /// for the following fields only:
  /// clanId, isClanDisbanded, updatedAt.
  @JsonKey(name: 'is_clan_disbanded')
  final bool isClanDisbanded;

  /// Commander id
  @JsonKey(name: 'leader_id')
  final int leaderId;

  /// Commander's name
  @JsonKey(name: 'leader_name')
  final String leaderName;

  /// Number of clan members
  @JsonKey(name: 'members_count')
  final int membersCount;

  /// Clan name
  final String name;

  /// Old clan name
  @JsonKey(name: 'old_name')
  final String oldName;

  /// Old clan tag
  @JsonKey(name: 'old_tag')
  final String oldTag;

  /// Time (UTC) when clan name was changed
  @JsonKey(name: 'renamed_at')
  final int renamedAt;

  /// Clan tag
  final String tag;

  /// Time when clan details were updated
  @JsonKey(name: 'updated_at')
  final int updatedAt;

  /// Clan members
  @JsonKey(defaultValue: <ClanMemberModel>[])
  final List<ClanMemberModel> members;

  Map<String, dynamic> toJson() => _$ClanDetailModelToJson(this);
}
