import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../core/domain/value_objects/index.dart';
import '../../domain/entities/player.dart';

part 'player_dto.freezed.dart';
part 'player_dto.g.dart';

@freezed
abstract class PlayerDto with _$PlayerDto {
  factory PlayerDto({
    @JsonKey(name: 'account_id') @required int accountId,
    @required String nickname,
  }) = _PlayerDto;

  factory PlayerDto.fromJson(Map<String, dynamic> json) {
    return _$PlayerDtoFromJson(json);
  }

  factory PlayerDto.fromDomain(Player player) {
    return PlayerDto(
      accountId: int.parse(player.id.getOrCrash()),
      nickname: player.nickname,
    );
  }
}

extension PlayerDtoToDomain on PlayerDto {
  Player toDomain() {
    return Player(
      id: UniqueId.fromUniqueString(accountId.toString()),
      nickname: nickname,
    );
  }
}
