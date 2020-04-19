import 'package:dartz/dartz.dart';

import '../errors/failures.dart';

Either<ValueFailure<String>, String> validateStringMaxLength(
  String value,
  int maxLength,
) {
  if (value.length <= maxLength) {
    return right(value);
  }

  return left(ValueFailure.exceedingLength(
    failedValue: value,
    maxLength: maxLength,
  ));
}
