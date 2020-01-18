import 'package:json_annotation/json_annotation.dart';

part 'clan.g.dart';

@JsonSerializable()
class Clan {
  Clan({
    this.clanId,
    this.createdAt,
    this.membersCount,
    this.name,
    this.tag,
  });

  factory Clan.fromJson(Map<String, dynamic> json) => _$ClanFromJson(json);

  /// Clan id
  @JsonKey(name: 'clan_id')
  final int clanId;

  /// Clan creation date
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// Number of clan members
  @JsonKey(name: 'members_count')
  final int membersCount;

  /// Clan name
  final String name;

  /// Clan tag
  final String tag;

  Map<String, dynamic> toJson() => _$ClanToJson(this);
}
