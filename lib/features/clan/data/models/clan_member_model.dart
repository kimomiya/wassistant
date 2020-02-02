import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'clan_member_model.g.dart';

@JsonSerializable()
class ClanMemberModel {
  ClanMemberModel({
    @required this.accountId,
    @required this.accountName,
    @required this.joinedAt,
    @required this.role,
  });

  factory ClanMemberModel.fromJson(Map<String, dynamic> json) {
    return _$ClanMemberModelFromJson(json);
  }

  /// User id
  @JsonKey(name: 'account_id')
  final int accountId;

  /// Player name
  @JsonKey(name: 'account_name')
  final String accountName;

  /// Date when player joined clan
  @JsonKey(name: 'joined_at')
  final int joinedAt;

  /// Technical position name
  final String role;

  Map<String, dynamic> toJson() => _$ClanMemberModelToJson(this);
}
