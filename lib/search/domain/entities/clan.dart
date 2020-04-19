import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/entity.dart';
import '../../../core/domain/value_objects/index.dart';

part 'clan.freezed.dart';

@freezed
abstract class Clan with _$Clan implements Entity {
  const factory Clan({
    @required UniqueId id,
    @required String createdAt,
    @required int membersCount,
    @required String name,
    @required String tag,
  }) = _Clan;
}
