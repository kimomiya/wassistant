import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../../core/env/env.dart';
import '../../../../core/extensions/dio_request.dart';
import '../../../../injection_container.dart';
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
    final env = locator<Env>();

    final responseData = await client.compactGet(
      '${env.baseURL}/account/list/',
      queryParameters: <String, dynamic>{
        'application_id': env.applicaionId,
        'account_id': accountId,
      },
    ) as Map<String, dynamic>;

    final playerInfoData =
        responseData[accountId.toString()] as Map<String, dynamic>;

    return PlayerInfoModel.fromJson(playerInfoData);
  }
}
