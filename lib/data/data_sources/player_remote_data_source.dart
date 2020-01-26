import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../core/error/exceptions.dart';
import '../models/player_info_model.dart';
import '../models/player_model.dart';
import '../utils/constants.dart';
import '../utils/http_helper.dart';

abstract class PlayerRemoteDataSource {
  Future<List<PlayerModel>> fetchPlayerList(String search);

  Future<PlayerInfoModel> fetchPlayerInfo(int accountId);
}

class PlayerRemoteDataSourceImpl implements PlayerRemoteDataSource {
  const PlayerRemoteDataSourceImpl({@required this.client});

  final Dio client;

  @override
  Future<PlayerInfoModel> fetchPlayerInfo(int accountId) async {
    final responseData = await _fetchData(
      path: '${baseURL}account/list/',
      queryParameters: <String, dynamic>{
        'application_id': applicationId,
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
      path: '${baseURL}account/list/',
      queryParameters: <String, dynamic>{
        'application_id': applicationId,
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
