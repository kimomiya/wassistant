import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/entity.dart';
import '../../core/value_objects/unique_id.dart';

part 'player.freezed.dart';

@freezed
abstract class Player with _$Player implements Entity {
  const factory Player({
    @required UniqueId id,
    @required String nickname,
  }) = _Player;
}
