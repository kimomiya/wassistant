import 'package:dio/dio.dart';

import '../errors/exceptions.dart';

extension MappingValidation on Response {
  dynamic mappingValidation() {
    if (statusCode != 200) {
      throw ServerException(
        code: statusCode,
        message: statusMessage,
      );
    }

    if (data['status'] == 'ok') {
      return data['data'];
    }

    throw ServerException(
      code: data['error']['code'] as int,
      message: data['error']['message'] as String,
    );
  }
}
