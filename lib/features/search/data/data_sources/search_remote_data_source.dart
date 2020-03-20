import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';

import '../../../../core/env/env.dart';
import '../../../../core/extensions/dio_request.dart';
import '../models/clan_model.dart';
import '../models/player_model.dart';

abstract class SearchRemoteDataSource {
  Future<List<PlayerModel>> searchPlayers(String search);

  Future<List<ClanModel>> searchClans(String search);
}

class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  SearchRemoteDataSourceImpl({
    @required this.locator,
    @required this.client,
  });

  final GetIt locator;
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

  @override
  Future<List<ClanModel>> searchClans(String search) async {
    final env = locator<Env>();

    final dynamic responseData = await client.compactGet(
      '${env.baseURL}/clans/list/',
      queryParameters: <String, dynamic>{
        'application_id': env.applicaionId,
        'search': search,
      },
    );

    final clans = <ClanModel>[];
    for (final Map<String, dynamic> clan in responseData) {
      clans.add(ClanModel.fromJson(clan));
    }

    return clans;
  }
}
