import 'package:json_annotation/json_annotation.dart';
import 'package:wassistant/models/clan_member.dart';

part 'clan_detail.g.dart';

@JsonSerializable()
class ClanDetail {
  ClanDetail({
    this.clanId,
    this.createdAt,
    this.creatorId,
    this.creatorName,
    this.description,
    this.isClanDisbanded,
    this.leaderId,
    this.leaderName,
    this.membersCount,
    this.name,
    this.oldName,
    this.oldTag,
    this.renamedAt,
    this.tag,
    this.updatedAt,
    this.members,
  });

  factory ClanDetail.fromJson(Map<String, dynamic> json) {
    return _$ClanDetailFromJson(json);
  }

  /// Clan id
  @JsonKey(name: 'clan_id')
  final int clanId;

  /// Clan creation date
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

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
  final DateTime renamedAt;

  /// Clan tag
  final String tag;

  /// Time when clan details were updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// Clan members
  @JsonKey(defaultValue: <ClanMember>[])
  final List<ClanMember> members;

  Map<String, dynamic> toJson() => _$ClanDetailToJson(this);
}
