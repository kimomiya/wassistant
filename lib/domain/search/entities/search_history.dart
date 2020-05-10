import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/entity.dart';
import '../../core/value_objects/unique_id.dart';

part 'search_history.freezed.dart';

@freezed
abstract class SearchHistory with _$SearchHistory implements Entity {
  const factory SearchHistory({
    @required UniqueId id,
    @required String searchWord,
  }) = _SearchHistory;
}
