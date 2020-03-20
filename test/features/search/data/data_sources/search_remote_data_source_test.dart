import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/env/env.dart';
import 'package:wassistant/core/errors/exceptions.dart';
import 'package:wassistant/features/search/data/data_sources/search_remote_data_source.dart';
import 'package:wassistant/features/search/data/models/clan_model.dart';
import 'package:wassistant/features/search/data/models/player_model.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockGetIt extends Mock implements GetIt {}

class MockHttpClient extends Mock implements Dio {}

void main() {
  SearchRemoteDataSourceImpl dataSource;
  MockGetIt mockLocator;
  MockHttpClient mockHttpClient;

  setUp(() {
    mockLocator = MockGetIt();
    mockHttpClient = MockHttpClient();
    dataSource = SearchRemoteDataSourceImpl(
      locator: mockLocator,
      client: mockHttpClient,
    );
  });

  final tEnv = Env();

  void setUpMockHttpClientSuccess200(String fixturePath) {
    when(mockLocator<Env>()).thenReturn(tEnv);
    when(
      mockHttpClient.get<Map<String, dynamic>>(
        any,
        queryParameters: anyNamed('queryParameters'),
      ),
    ).thenAnswer(
      (_) async => Response<Map<String, dynamic>>(
        data: jsonDecode(fixture(fixturePath)) as Map<String, dynamic>,
        statusCode: 200,
      ),
    );
  }

  void setUpMockHttpClientFailure404() {
    when(mockLocator<Env>()).thenReturn(tEnv);
    when(
      mockHttpClient.get<Map<String, dynamic>>(
        any,
        queryParameters: anyNamed('queryParameters'),
      ),
    ).thenAnswer(
      (_) async => Response<Map<String, dynamic>>(statusCode: 404),
    );
  }

  group(
    'searchPlayers',
    () {
      const tSearch = 'horta';
      const tPlayerModels = <PlayerModel>[
        PlayerModel(
          nickname: 'Horta_luo',
          accountId: 2022009820,
        ),
        PlayerModel(
          nickname: 'horta_ro0193',
          accountId: 2019754947,
        ),
      ];

      test(
        'should perform a GET request on a URL being the endpoint',
        () async {
          setUpMockHttpClientSuccess200('players_response');

          await dataSource.searchPlayers(tSearch);

          verify(mockHttpClient.get<dynamic>(
            '${tEnv.baseURL}/account/list/',
            queryParameters: <String, dynamic>{
              'application_id': tEnv.applicaionId,
              'search': tSearch,
            },
          ));
        },
      );

      test(
        'should return a list of PlayerModel '
        'when the response status code is 200',
        () async {
          setUpMockHttpClientSuccess200('players_response');

          final result = await dataSource.searchPlayers(tSearch);

          expect(result, equals(tPlayerModels));
        },
      );

      test(
        'should throw a ServerException '
        'when the response status code is not 200',
        () async {
          setUpMockHttpClientFailure404();

          final call = dataSource.searchPlayers;

          expect(() => call(tSearch), throwsA(isA<ServerException>()));
        },
      );
    },
  );

  group(
    'searchClans',
    () {
      const tSearch = 'note';
      const tClanModels = <ClanModel>[
        ClanModel(
          clanId: 2000018586,
          createdAt: 1554897532,
          membersCount: 4,
          name: 'NOTEmi',
          tag: 'NOTE',
        ),
        ClanModel(
          clanId: 2000016337,
          createdAt: 1533994576,
          membersCount: 43,
          name: 'Rebirth of Type-Moon&NOTES',
          tag: 'TPM',
        ),
      ];

      test(
        'should perform a GET request on a URL being the endpoint',
        () async {
          setUpMockHttpClientSuccess200('clans_response');

          await dataSource.searchClans(tSearch);

          verify(mockHttpClient.get<dynamic>(
            '${tEnv.baseURL}/clans/list/',
            queryParameters: <String, dynamic>{
              'application_id': tEnv.applicaionId,
              'search': tSearch,
            },
          ));
        },
      );

      test(
        'should return a list of ClanModel '
        'when the response status code is 200',
        () async {
          setUpMockHttpClientSuccess200('clans_response');

          final result = await dataSource.searchClans(tSearch);

          expect(result, equals(tClanModels));
        },
      );

      test(
        'should throw a ServerException '
        'when the response status code is not 200',
        () async {
          setUpMockHttpClientFailure404();

          final call = dataSource.searchPlayers;

          expect(() => call(tSearch), throwsA(isA<ServerException>()));
        },
      );
    },
  );
}
