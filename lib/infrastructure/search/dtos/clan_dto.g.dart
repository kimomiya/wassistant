// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clan_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClanDto _$_$_ClanDtoFromJson(Map<String, dynamic> json) {
  return _$_ClanDto(
    clanId: json['clan_id'] as int,
    createdAt: json['created_at'] as String,
    membersCount: json['members_count'] as int,
    name: json['name'] as String,
    tag: json['tag'] as String,
  );
}

Map<String, dynamic> _$_$_ClanDtoToJson(_$_ClanDto instance) =>
    <String, dynamic>{
      'clan_id': instance.clanId,
      'created_at': instance.createdAt,
      'members_count': instance.membersCount,
      'name': instance.name,
      'tag': instance.tag,
    };
