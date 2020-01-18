// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clan_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClanMember _$ClanMemberFromJson(Map<String, dynamic> json) {
  return ClanMember(
    accountId: json['account_id'] as int,
    accountName: json['account_name'] as String,
    joinedAt: json['joined_at'] == null
        ? null
        : DateTime.parse(json['joined_at'] as String),
    role: json['role'] as String,
  );
}

Map<String, dynamic> _$ClanMemberToJson(ClanMember instance) =>
    <String, dynamic>{
      'account_id': instance.accountId,
      'account_name': instance.accountName,
      'joined_at': instance.joinedAt?.toIso8601String(),
      'role': instance.role,
    };
