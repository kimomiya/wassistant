import 'package:wassistant/core/exceptions/http_exceptions.dart';

enum ApiType {
  players,
  player,
  clans,
  clan,
}

extension ApiTypeValue on ApiType {
  static String baseURL(ApiType type) {
    switch (type) {
      case ApiType.players:
      case ApiType.player:
        return 'https://api.worldofwarships.asia/wows/account';

      case ApiType.clans:
      case ApiType.clan:
        return 'https://api.worldofwarships.asia/wows/clans';

      default:
        throw HttpRequestException('The API type $type dose not exists.');
    }
  }

  static String path(ApiType type) {
    switch (type) {
      case ApiType.players:
      case ApiType.player:
      case ApiType.clans:
        return '/list/';

      case ApiType.clan:
        return '/info/';

      default:
        throw HttpRequestException('The API type $type dose not exists.');
    }
  }
}
