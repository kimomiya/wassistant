import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../shared/env.dart';
import '../../core/wargaming_requests.dart';
import '../dtos/clan_dto.dart';
import '../dtos/player_dto.dart';

abstract class SearchRemoteDataSource {
  Future<List<PlayerDto>> searchPlayers(String search);

  Future<List<ClanDto>> searchClans(String search);
}

@injectable
@lazySingleton
@RegisterAs(SearchRemoteDataSource)
class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  SearchRemoteDataSourceImpl({
    @required this.locator,
    @required this.client,
  });

  final GetIt locator;
  final Dio client;

  @override
  Future<List<PlayerDto>> searchPlayers(String search) async {
    final env = locator<Env>();

    final response = await client.wargamingGet<List<Map<String, dynamic>>>(
      '${env.baseURLForWows}/account/list/',
      queryParameters: <String, dynamic>{
        'application_id': env.applicaionId,
        'search': search,
      },
    );

    final players = <PlayerDto>[];
    for (final player in response) {
      players.add(PlayerDto.fromJson(player));
    }

    return players;
  }

  @override
  Future<List<ClanDto>> searchClans(String search) async {
    final env = locator<Env>();

    final response = await client.wargamingGet<List<Map<String, dynamic>>>(
      '${env.baseURLForWows}/clans/list/',
      queryParameters: <String, dynamic>{
        'application_id': env.applicaionId,
        'search': search,
      },
    );

    final clans = <ClanDto>[];
    for (final clan in response) {
      clans.add(ClanDto.fromJson(clan));
    }

    return clans;
  }
}
