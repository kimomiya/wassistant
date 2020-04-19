import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/entity.dart';
import '../../../core/domain/value_objects/index.dart';
import '../value_objects/index.dart';

part 'search_history.freezed.dart';

@freezed
abstract class SearchHistory with _$SearchHistory implements Entity {
  const factory SearchHistory({
    @required UniqueId id,
    @required SearchWord searchWord,
  }) = _SearchHistory;
}
