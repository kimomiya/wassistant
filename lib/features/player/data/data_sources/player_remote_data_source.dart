import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';

import '../../../../core/env/env.dart';
import '../../../../core/extensions/dio_request.dart';
import '../models/player_details_model.dart';

abstract class PlayerRemoteDataSource {
  Future<PlayerDetailsModel> fetchPlayerDetails(int accountId);
}

class PlayerRemoteDataSourceImpl implements PlayerRemoteDataSource {
  PlayerRemoteDataSourceImpl({
    @required this.locator,
    @required this.client,
  });

  final GetIt locator;
  final Dio client;

  @override
  Future<PlayerDetailsModel> fetchPlayerDetails(int accountId) async {
    final env = locator<Env>();

    final responseData = await client.compactGet(
      '${env.baseURL}/account/list/',
      queryParameters: <String, dynamic>{
        'application_id': env.applicaionId,
        'account_id': accountId,
      },
    ) as Map<String, dynamic>;

    final jsonMap = responseData[accountId.toString()] as Map<String, dynamic>;

    return PlayerDetailsModel.fromJson(jsonMap);
  }
}
