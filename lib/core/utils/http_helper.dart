import 'package:dio/dio.dart';

import '../errors/exceptions.dart';

dynamic mappingValidation(Response<Map<String, dynamic>> response) {
  if (response.statusCode != 200) {
    throw ServerException(
      code: response.statusCode,
      message: response.statusMessage,
    );
  }

  final data = response.data;
  if (data['status'] == 'ok') {
    return data['data'];
  }

  throw ServerException(
    code: data['error']['code'] as int,
    message: data['error']['message'] as String,
  );
}
