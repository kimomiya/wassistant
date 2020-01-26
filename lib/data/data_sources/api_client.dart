import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/core/error/exceptions.dart';

import '../../core/enums/api_type.dart';

class ApiClient {
  Future<dynamic> request(
    ApiType apiType, {
    @required Map<String, dynamic> parameters,
  }) async {
    await _checkNetworkReachability();

    final dio = Dio(
      BaseOptions(
        baseUrl: apiType.baseURL,
        connectTimeout: 60 * 1000,
        receiveTimeout: 60 * 1000,
        validateStatus: (code) => code >= 200 && code < 300,
      ),
    );

    final handleError = (DioError exception) {
      throw ServerException(
        code: exception.response?.statusCode ?? 503,
        message: exception.message,
      );
    };

    return dio
        .request<Map<String, dynamic>>(
          apiType.path,
          queryParameters: parameters,
          options: Options(
            method: apiType.method,
          ),
        )
        .catchError(handleError)
        .then<dynamic>((response) => response.mappingValidation());
  }
}

// MARK: - Checking network reachability

extension on ApiClient {
  Future<void> _checkNetworkReachability() async {
    final connectivity = await Connectivity().checkConnectivity();
    final isNetworkReachable = connectivity != ConnectivityResult.none;
    if (!isNetworkReachable) {
      throw ServerException(code: 0, message: 'Network is unreachable.');
    }
  }
}

// MARK: - Mapping data with validation

extension on Response {
  dynamic mappingValidation() {
    final response = Map<String, dynamic>.from(data as Map);

    if (response['status'] == 'ok') {
      return response['data'];
    }

    throw ServerException(
      code: response['error']['code'] as int,
      message: response['error']['message'] as String,
    );
  }
}
