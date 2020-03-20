import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../../core/env/env.dart';
import '../../../../core/extensions/dio_request.dart';
import '../../../../injection_container.dart';
import '../models/player_model.dart';

abstract class SearchRemoteDataSource {
  Future<List<PlayerModel>> searchPlayers(String search);
}

class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  SearchRemoteDataSourceImpl({
    @required this.client,
  });

  final Dio client;

  @override
  Future<List<PlayerModel>> searchPlayers(String search) async {
    final env = locator<Env>();

    final dynamic responseData = await client.compactGet(
      '${env.baseURL}/account/list/',
      queryParameters: <String, dynamic>{
        'application_id': env.applicaionId,
        'search': search,
      },
    );

    final players = <PlayerModel>[];
    for (final Map<String, dynamic> player in responseData) {
      players.add(PlayerModel.fromJson(player));
    }

    return players;
  }
}
