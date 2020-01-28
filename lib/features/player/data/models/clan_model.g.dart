// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClanModel _$ClanModelFromJson(Map<String, dynamic> json) {
  return ClanModel(
    clanModelId: json['clanModel_id'] as int,
    createdAt: json['created_at'] as int,
    membersCount: json['members_count'] as int,
    name: json['name'] as String,
    tag: json['tag'] as String,
  );
}

Map<String, dynamic> _$ClanModelToJson(ClanModel instance) => <String, dynamic>{
      'clanModel_id': instance.clanModelId,
      'created_at': instance.createdAt,
      'members_count': instance.membersCount,
      'name': instance.name,
      'tag': instance.tag,
    };
