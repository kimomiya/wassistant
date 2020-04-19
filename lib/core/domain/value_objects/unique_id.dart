import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

import '../errors/failures.dart';
import '../value_object.dart';

class UniqueId extends ValueObject<String> {
  factory UniqueId() {
    return UniqueId._(
      right(Uuid().v1()),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueString) {
    assert(uniqueString != null);
    return UniqueId._(right(uniqueString));
  }

  const UniqueId._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
