import 'package:dio/dio.dart';
import '../errors/exceptions.dart';

extension Request on Dio {
  Future<dynamic> compactGet(
    String path, {
    Map<String, dynamic> queryParameters,
  }) async {
    final response = await get<Map<String, dynamic>>(
      path,
      queryParameters: queryParameters,
    );

    if (response.statusCode != 200) {
      throw ServerException(
        code: response.statusCode,
        message: response.statusMessage,
      );
    }

    if (response.data['status'] == 'ok') {
      return response.data['data'];
    }

    throw ServerException(
      code: response.data['error']['code'] as int,
      message: response.data['error']['message'] as String,
    );
  }
}
