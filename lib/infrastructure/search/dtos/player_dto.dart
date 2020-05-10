import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../domain/core/value_objects/unique_id.dart';
import '../../../domain/search/entities/player.dart';

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
}

extension PlayerDtoToDomain on PlayerDto {
  Player toDomain() {
    return Player(
      id: UniqueId.fromUniqueString(accountId.toString()),
      nickname: nickname,
    );
  }
}
