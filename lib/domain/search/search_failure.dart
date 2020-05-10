import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_failure.freezed.dart';

@freezed
abstract class SearchFailure with _$SearchFailure {
  const factory SearchFailure.networkUnreachable() = NetworkUnreachable;
  const factory SearchFailure.notEnoughSearchLength() = NotEnoughSearchLength;
  const factory SearchFailure.noContent() = NoContent;
  const factory SearchFailure.serverError() = ServerError;
}
