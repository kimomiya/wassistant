import 'package:dartz/dartz.dart';

import '../errors/failures.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String value) {
  if (value.isEmpty) {
    return left(ValueFailure.empty(failedValue: value));
  } else {
    return right(value);
  }
}
