import 'package:json_annotation/json_annotation.dart';

part 'player.g.dart';

@JsonSerializable()
class Player {
  Player({
    this.nickname,
    this.accountId,
  });

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);

  final String nickname;

  @JsonKey(name: 'account_id')
  final int accountId;

  Map<String, dynamic> toJson() => _$PlayerToJson(this);
}
