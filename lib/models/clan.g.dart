// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Clan _$ClanFromJson(Map<String, dynamic> json) {
  return Clan(
    clanId: json['clan_id'] as int,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    membersCount: json['members_count'] as int,
    name: json['name'] as String,
    tag: json['tag'] as String,
  );
}

Map<String, dynamic> _$ClanToJson(Clan instance) => <String, dynamic>{
      'clan_id': instance.clanId,
      'created_at': instance.createdAt?.toIso8601String(),
      'members_count': instance.membersCount,
      'name': instance.name,
      'tag': instance.tag,
    };
