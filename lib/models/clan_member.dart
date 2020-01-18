import 'package:json_annotation/json_annotation.dart';

part 'clan_member.g.dart';

@JsonSerializable()
class ClanMember {
  ClanMember({
    this.accountId,
    this.accountName,
    this.joinedAt,
    this.role,
  });

  factory ClanMember.fromJson(Map<String, dynamic> json) {
    return _$ClanMemberFromJson(json);
  }

  /// User id
  @JsonKey(name: 'account_id')
  final int accountId;

  /// Player name
  @JsonKey(name: 'account_name')
  final String accountName;

  /// Date when player joined clan
  @JsonKey(name: 'joined_at')
  final DateTime joinedAt;

  /// Technical position name
  final String role;

  Map<String, dynamic> toJson() => _$ClanMemberToJson(this);
}
