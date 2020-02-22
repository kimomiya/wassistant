import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../../core/data_source/mapping_validation.dart';
import '../../../../core/env/env.dart';
import '../models/player_info_model.dart';

abstract class PlayerRemoteDataSource {
  Future<PlayerInfoModel> fetchPlayerInfo(int accountId);
}

class PlayerRemoteDataSourceImpl implements PlayerRemoteDataSource {
  PlayerRemoteDataSourceImpl({
    @required this.client,
  });

  final Dio client;

  @override
  Future<PlayerInfoModel> fetchPlayerInfo(int accountId) async {
    final responseData = await _fetchData(
      path: '${env.baseURL}/account/list/',
      queryParameters: <String, dynamic>{
        'application_id': env.applicaionId,
        'account_id': accountId,
      },
    ) as Map<String, dynamic>;

    final playerInfoData =
        responseData[accountId.toString()] as Map<String, dynamic>;

    return PlayerInfoModel.fromJson(playerInfoData);
  }

  Future<dynamic> _fetchData({
    @required String path,
    @required Map<String, dynamic> queryParameters,
  }) async {
    final response = await client.get<Map<String, dynamic>>(
      path,
      queryParameters: queryParameters,
    );

    return response.mappingValidation();
  }
}
