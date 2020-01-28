import '../../../../core/errors/exceptions.dart';

dynamic mappingValidation(Map<String, dynamic> response) {
  if (response['status'] == 'ok') {
    return response['data'];
  }

  throw ServerException(
    code: response['error']['code'] as int,
    message: response['error']['message'] as String,
  );
}
