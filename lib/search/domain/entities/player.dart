import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/entity.dart';
import '../../../core/domain/value_objects/index.dart';

part 'player.freezed.dart';

@freezed
abstract class Player with _$Player implements Entity {
  const factory Player({
    @required UniqueId id,
    @required String nickname,
  }) = _Player;
}
