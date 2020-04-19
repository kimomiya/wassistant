import 'package:dartz/dartz.dart';

import '../errors/failures.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String value) {
  if (value.isNotEmpty) {
    return right(value);
  }

  return left(ValueFailure.empty(failedValue: value));
}
