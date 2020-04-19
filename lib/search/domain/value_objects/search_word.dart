import 'package:dartz/dartz.dart';

import '../../../core/domain/errors/failures.dart';
import '../../../core/domain/validators/index.dart';
import '../../../core/domain/value_object.dart';

class SearchWord extends ValueObject<String> {
  factory SearchWord(String value) {
    assert(value != null);
    return SearchWord._(
      validateStringNotEmpty(value).flatMap(
        (value) => validateStringMaxLength(value, maxLength),
      ),
    );
  }

  const SearchWord._(this.value);

  static const maxLength = 24;

  @override
  final Either<ValueFailure<String>, String> value;
}
