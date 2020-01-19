import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:wassistant/core/enums/api_type.dart';
import 'package:wassistant/core/exceptions/http_exceptions.dart';

class ApiClient {
  ApiType _apiType;

  Future<Response<ResponseType>> request<ResponseType>(
    ApiType apiType,
    Map<String, dynamic> parameters,
  ) async {
    final isNetworkReachable = await _isNetworkReachable();
    if (!isNetworkReachable) {
      throw ConnectivityException();
    }

    final options = BaseOptions(
      baseUrl: ApiTypeValue.baseURL(_apiType),
      connectTimeout: 30 * 1000,
      receiveTimeout: 30 * 1000,
      validateStatus: (code) => code >= 200 && code < 300,
    );
    final dio = Dio(options);

    try {
      return dio.get<ResponseType>(
        ApiTypeValue.path(apiType),
        queryParameters: parameters,
      );
    } catch (exception) {
      throw HttpRequestException(exception.toString());
    }
  }
}

extension on ApiClient {
  Future<bool> _isNetworkReachable() async {
    final connectivity = Connectivity();
    return await connectivity.checkConnectivity() != ConnectivityResult.none;
  }
}
