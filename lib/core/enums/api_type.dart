import '../env/env.dart';

enum ApiType {
  players,
  player,
  clans,
  clan,
}

extension Properties on ApiType {
  String get baseURL => 'https://api.worldofwarships.${Env.realm}';

  String get path {
    switch (this) {
      case ApiType.players:
      case ApiType.player:
        return '/account/list/';

      case ApiType.clans:
      case ApiType.clan:
        return '/clans/info/';

      default:
        throw Exception('The API type [$this] dose not exists.');
    }
  }

  String get method => 'GET';
}
