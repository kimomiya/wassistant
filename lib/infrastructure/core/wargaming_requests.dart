import 'package:dio/dio.dart';
import 'package:wassistant/shared/utils/logger.dart';

extension Request on Dio {
  Future<T> wargamingGet<T>(
    String path, {
    Map<String, dynamic> queryParameters,
  }) async {
    logger.d('GET ~> $path');

    final response = await get<Map<String, dynamic>>(
      path,
      queryParameters: queryParameters,
    );

    logger.d('Recieve <~ $response');

    return response.data['data'] as T;
  }
}
