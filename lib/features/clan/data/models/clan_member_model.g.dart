// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clan_member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClanMemberModel _$ClanMemberModelFromJson(Map<String, dynamic> json) {
  return ClanMemberModel(
    accountId: json['account_id'] as int,
    accountName: json['account_name'] as String,
    joinedAt: json['joined_at'] as int,
    role: json['role'] as String,
  );
}

Map<String, dynamic> _$ClanMemberModelToJson(ClanMemberModel instance) =>
    <String, dynamic>{
      'account_id': instance.accountId,
      'account_name': instance.accountName,
      'joined_at': instance.joinedAt,
      'role': instance.role,
    };
