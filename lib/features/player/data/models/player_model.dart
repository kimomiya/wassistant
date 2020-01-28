import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/player.dart';

part 'player_model.g.dart';

@JsonSerializable()
class PlayerModel extends Player {
  const PlayerModel({
    @required this.nickname,
    @required this.accountId,
  });

  factory PlayerModel.fromJson(Map<String, dynamic> json) {
    return _$PlayerModelFromJson(json);
  }

  /// Player name
  @override
  final String nickname;

  /// Player ID
  @override
  @JsonKey(name: 'account_id')
  final int accountId;

  Map<String, dynamic> toJson() => _$PlayerModelToJson(this);
}
