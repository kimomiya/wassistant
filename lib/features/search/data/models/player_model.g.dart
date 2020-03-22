// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerModel _$PlayerModelFromJson(Map<String, dynamic> json) {
  return PlayerModel(
    nickname: json['nickname'] as String,
    accountId: json['account_id'] as int,
  );
}

Map<String, dynamic> _$PlayerModelToJson(PlayerModel instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'account_id': instance.accountId,
    };
