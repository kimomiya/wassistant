import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/player.dart';

part 'player_model.g.dart';

@JsonSerializable()
class PlayerModel extends Player {
  const PlayerModel({
    @required String nickname,
    @required int accountId,
  }) : super(nickname: nickname, accountId: accountId);

  factory PlayerModel.fromJson(Map<String, dynamic> json) {
    return _$PlayerModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlayerModelToJson(this);
}
