// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clan_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClanDetailModel _$ClanDetailModelFromJson(Map<String, dynamic> json) {
  return ClanDetailModel(
    clanId: json['clan_id'] as int,
    createdAt: json['created_at'] as int,
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
    renamedAt: json['renamed_at'] as int,
    tag: json['tag'] as String,
    updatedAt: json['updated_at'] as int,
    members: (json['members'] as List)
            ?.map((e) => e == null
                ? null
                : ClanMemberModel.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
  );
}

Map<String, dynamic> _$ClanDetailModelToJson(ClanDetailModel instance) =>
    <String, dynamic>{
      'clan_id': instance.clanId,
      'created_at': instance.createdAt,
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
      'renamed_at': instance.renamedAt,
      'tag': instance.tag,
      'updated_at': instance.updatedAt,
      'members': instance.members,
    };
