import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/clan.dart';

part 'clan_model.g.dart';

@JsonSerializable()
class ClanModel extends Clan {
  ClanModel({
    @required this.clanId,
    @required this.createdAt,
    @required this.membersCount,
    @required this.name,
    @required this.tag,
  });

  factory ClanModel.fromJson(Map<String, dynamic> json) {
    return _$ClanModelFromJson(json);
  }

  /// Clan id
  @override
  @JsonKey(name: 'clan_id')
  final int clanId;

  /// Clan creation date
  @override
  @JsonKey(name: 'created_at')
  final int createdAt;

  /// Number of clan members
  @override
  @JsonKey(name: 'members_count')
  final int membersCount;

  /// Clan name
  @override
  final String name;

  /// Clan tag
  @override
  final String tag;

  Map<String, dynamic> toJson() => _$ClanModelToJson(this);
}
