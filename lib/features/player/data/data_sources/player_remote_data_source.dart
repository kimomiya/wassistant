import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../../core/enums/api_type.dart';
import '../../../../core/env/env.dart';
import '../../../../core/errors/exceptions.dart';
import '../models/player_info_model.dart';
import '../models/player_model.dart';
import '../utils/http_helper.dart';

abstract class PlayerRemoteDataSource {
  ApiType endpoint;

  Future<List<PlayerModel>> fetchPlayerList(String search);

  Future<PlayerInfoModel> fetchPlayerInfo(int accountId);
}

class PlayerRemoteDataSourceImpl implements PlayerRemoteDataSource {
  PlayerRemoteDataSourceImpl({
    @required this.client,
  });

  final Dio client;

  @override
  ApiType endpoint = ApiType.clan;

  @override
  Future<PlayerInfoModel> fetchPlayerInfo(int accountId) async {
    final responseData = await _fetchData(
      path: '${endpoint.baseURL}account/list/',
      queryParameters: <String, dynamic>{
        'application_id': Env.applicaionId,
        'account_id': accountId,
      },
    ) as Map<String, dynamic>;

    final playerInfoData =
        responseData[accountId.toString()] as Map<String, dynamic>;

    return PlayerInfoModel.fromJson(playerInfoData);
  }

  @override
  Future<List<PlayerModel>> fetchPlayerList(String search) async {
    final dynamic responseData = await _fetchData(
      path: '${endpoint.baseURL}account/list/',
      queryParameters: <String, dynamic>{
        'application_id': Env.applicaionId,
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

    if (response.statusCode != 200) {
      throw ServerException(
        code: response.statusCode,
        message: response.statusMessage,
      );
    }

    return mappingValidation(response.data);
  }
}
