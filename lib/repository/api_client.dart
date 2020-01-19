import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/core/enums/api_type.dart';
import 'package:wassistant/core/exceptions/http_exceptions.dart';

class ApiClient {
  Future<dynamic> request(
    ApiType apiType, {
    @required Map<String, dynamic> parameters,
  }) async {
    await _checkNetworkReachability();

    final dio = Dio(
      BaseOptions(
        baseUrl: apiType.baseURL,
        connectTimeout: 30 * 1000,
        receiveTimeout: 30 * 1000,
        validateStatus: (code) => code >= 200 && code < 300,
      ),
    );

    final handleError = (dynamic exception) {
      throw HttpRequestException(exception.toString());
    };

    return dio
        .request<Map<String, dynamic>>(
          apiType.path,
          queryParameters: parameters,
          options: Options(
            method: apiType.method,
          ),
        )
        .then<dynamic>((response) => response.mappingValidation())
        .catchError(handleError);
  }
}

// MARK: - Private methods

extension on ApiClient {
  Future _checkNetworkReachability() async {
    final connectivity = await Connectivity().checkConnectivity();
    final isNetworkReachable = connectivity != ConnectivityResult.none;
    if (!isNetworkReachable) {
      throw ConnectivityException();
    }
  }
}

// MARK: - ApiType extension

extension on ApiType {
  String get baseURL {
    switch (this) {
      case ApiType.players:
      case ApiType.player:
        return 'https://api.worldofwarships.asia/wows/account';

      case ApiType.clans:
      case ApiType.clan:
        return 'https://api.worldofwarships.asia/wows/clans';

      default:
        throw HttpRequestException('The API type $this dose not exists.');
    }
  }

  String get path {
    switch (this) {
      case ApiType.players:
      case ApiType.player:
      case ApiType.clans:
        return '/list/';

      case ApiType.clan:
        return '/info/';

      default:
        throw HttpRequestException('The API type $this dose not exists.');
    }
  }

  String get method {
    switch (this) {
      case ApiType.players:
      case ApiType.player:
      case ApiType.clans:
      case ApiType.clan:
        return 'GET';

      default:
        throw HttpRequestException('The API type $this dose not exists.');
    }
  }
}

// MARK: - Response extension

extension on Response {
  dynamic mappingValidation() {
    final response = Map<String, dynamic>.from(data as Map);

    if (response['status'] == 'ok') {
      return response['data'];
    }

    throw ResultCodeException(
      code: response['error']['code'] as int,
      message: response['error']['message'] as String,
    );
  }
}
