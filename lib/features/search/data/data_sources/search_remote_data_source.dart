import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../../core/env/env.dart';
import '../../../../core/utils/http_helper.dart';
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
    final dynamic responseData = await _fetchData(
      path: '${env.baseURL}/account/list/',
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

  Future<dynamic> _fetchData({
    @required String path,
    @required Map<String, dynamic> queryParameters,
  }) async {
    final response = await client.get<Map<String, dynamic>>(
      path,
      queryParameters: queryParameters,
    );

    return mappingValidation(response);
  }
}
