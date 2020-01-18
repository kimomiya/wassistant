// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clan_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClanDetail _$ClanDetailFromJson(Map<String, dynamic> json) {
  return ClanDetail(
    clanId: json['clan_id'] as int,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    creatorId: json['creator_id'] as int,
    creatorName: json['creator_name'] as String,
    description: json['description'] as String,
    isClanDisbanded: json['is_clan_disbanded'] as bool,
    leaderId: json['leader_id'] as int,
    leaderName: json['leader_name'] as String,
    membersCount: json['members_count'] as int,
    name: json['name'] as String,
    oldName: json['old_name'] as String,
    oldTag: json['old_tag'] as String,
    renamedAt: json['renamed_at'] == null
        ? null
        : DateTime.parse(json['renamed_at'] as String),
    tag: json['tag'] as String,
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    members: (json['members'] as List)
            ?.map((e) => e == null
                ? null
                : ClanMember.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
  );
}

Map<String, dynamic> _$ClanDetailToJson(ClanDetail instance) =>
    <String, dynamic>{
      'clan_id': instance.clanId,
      'created_at': instance.createdAt?.toIso8601String(),
      'creator_id': instance.creatorId,
      'creator_name': instance.creatorName,
      'description': instance.description,
      'is_clan_disbanded': instance.isClanDisbanded,
      'leader_id': instance.leaderId,
      'leader_name': instance.leaderName,
      'members_count': instance.membersCount,
      'name': instance.name,
      'old_name': instance.oldName,
      'old_tag': instance.oldTag,
      'renamed_at': instance.renamedAt?.toIso8601String(),
      'tag': instance.tag,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'members': instance.members,
    };
