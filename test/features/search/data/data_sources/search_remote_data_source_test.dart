import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/env/env.dart';
import 'package:wassistant/core/errors/exceptions.dart';
import 'package:wassistant/features/search/data/data_sources/search_remote_data_source.dart';
import 'package:wassistant/features/search/data/models/player_model.dart';
import 'package:wassistant/injection_container.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockHttpClient extends Mock implements Dio {}

class MockHttpClientAdapter extends Mock implements HttpClientAdapter {}

void main() {
  SearchRemoteDataSourceImpl dataSource;
  MockHttpClient mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    dataSource = SearchRemoteDataSourceImpl(client: mockHttpClient);
  });

  final env = locator<Env>();

  void setUpMockHttpClientSuccess200(String fixturePath) {
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
    'Fetch player list data source',
    () {
      const tSearch = 'horta';
      const tPlayerModelList = <PlayerModel>[
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
        'should perform a GET request on a URL with players being the endpoint',
        () async {
          setUpMockHttpClientSuccess200('player_list_response');

          await dataSource.searchPlayers(tSearch);

          verify(mockHttpClient.get<dynamic>(
            '${env.baseURL}/account/list/',
            queryParameters: <String, dynamic>{
              'application_id': env.applicaionId,
              'search': tSearch,
            },
          ));
        },
      );

      test(
        'should return a player list when the response status code is 200',
        () async {
          setUpMockHttpClientSuccess200('player_list_response');

          final result = await dataSource.searchPlayers(tSearch);

          expect(result, equals(tPlayerModelList));
        },
      );

      test(
        'should throw a ServerException when the response status code is not 200',
        () async {
          setUpMockHttpClientFailure404();

          final call = dataSource.searchPlayers;

          expect(() => call(tSearch), throwsA(isA<ServerException>()));
        },
      );
    },
  );
}
