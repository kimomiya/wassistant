import '../error/exceptions.dart';

enum ApiType {
  players,
  player,
  clans,
  clan,
}

extension ApiTypeValues on ApiType {
  String get baseURL {
    switch (this) {
      case ApiType.players:
      case ApiType.player:
        return 'https://api.worldofwarships.asia/wows/account';

      case ApiType.clans:
      case ApiType.clan:
        return 'https://api.worldofwarships.asia/wows/clans';

      default:
        throw ServerException(
          code: 1,
          message: 'The API type [$this] dose not exists.',
        );
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
        throw ServerException(
          code: 1,
          message: 'The API type [$this] dose not exists.',
        );
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
        throw ServerException(
          code: 1,
          message: 'The API type [$this] dose not exists.',
        );
    }
  }
}
