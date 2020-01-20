import 'package:wassistant/core/constants/env.dart';
import 'package:wassistant/core/enums/api_type.dart';
import 'package:wassistant/models/player.dart';
import 'package:wassistant/repository/api_client.dart';

class PlayerRepository {
  const PlayerRepository(this.apiClient);

  final ApiClient apiClient;

  Future<List<Player>> fetchPlayers(String search) async {
    final parameters = {
      'application_id': Env.applicaionId,
      'search': search,
    };
    final dynamic response = await apiClient.request(
      ApiType.players,
      parameters: parameters,
    );

    final players = <Player>[];
    for (final Map<String, dynamic> player in response) {
      players.add(Player.fromJson(player));
    }
    return players;
  }
}
