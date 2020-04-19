import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../core/domain/value_objects/index.dart';
import '../../domain/entities/clan.dart';

part 'clan_dto.freezed.dart';
part 'clan_dto.g.dart';

@freezed
abstract class ClanDto with _$ClanDto {
  const factory ClanDto({
    @JsonKey(name: 'clan_id') @required int clanId,
    @JsonKey(name: 'created_at') @required String createdAt,
    @JsonKey(name: 'members_count') @required int membersCount,
    @required String name,
    @required String tag,
  }) = _ClanDto;

  factory ClanDto.fromJson(Map<String, dynamic> json) {
    return _$ClanDtoFromJson(json);
  }

  factory ClanDto.fromDomain(Clan clan) {
    return ClanDto(
      clanId: int.parse(clan.id.getOrCrash()),
      createdAt: clan.createdAt,
      membersCount: clan.membersCount,
      name: clan.name,
      tag: clan.tag,
    );
  }
}

extension ClanDtoToDomain on ClanDto {
  Clan toDomain() {
    return Clan(
      id: UniqueId.fromUniqueString(clanId.toString()),
      createdAt: createdAt,
      membersCount: membersCount,
      name: name,
      tag: tag,
    );
  }
}
