import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/env/env.dart';
import 'package:wassistant/core/errors/exceptions.dart';
import 'package:wassistant/features/player/data/data_sources/player_remote_data_source.dart';
import 'package:wassistant/features/player/data/models/player_details_model.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockGetIt extends Mock implements GetIt {}

class MockHttpClient extends Mock implements Dio {}

class MockHttpClientAdapter extends Mock implements HttpClientAdapter {}

void main() {
  PlayerRemoteDataSourceImpl dataSource;
  MockGetIt mockLocator;
  MockHttpClient mockHttpClient;

  setUp(() {
    mockLocator = MockGetIt();
    mockHttpClient = MockHttpClient();
    dataSource = PlayerRemoteDataSourceImpl(
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
    'fetchPlayerDetails',
    () {
      const tAccountId = 2022009820;
      final tResponse = jsonDecode(
        fixture('player_details_response'),
      ) as Map<String, dynamic>;
      final tPlayerDetailsModel = PlayerDetailsModel.fromJson(
        tResponse['data'][tAccountId.toString()] as Map<String, dynamic>,
      );

      test(
        'should perform a GET request on a URL being the endpoint',
        () async {
          setUpMockHttpClientSuccess200('player_details_response');

          await dataSource.fetchPlayerDetails(tAccountId);

          verify(mockHttpClient.get<dynamic>(
            '${tEnv.baseURL}/account/list/',
            queryParameters: <String, dynamic>{
              'application_id': tEnv.applicaionId,
              'account_id': tAccountId,
            },
          ));
        },
      );

      test(
        'should return PlayerDetailsModel '
        'when the response status code is 200',
        () async {
          setUpMockHttpClientSuccess200('player_details_response');

          final result = await dataSource.fetchPlayerDetails(tAccountId);

          expect(result.toJson(), equals(tPlayerDetailsModel.toJson()));
          expect(result.statistics, equals(tPlayerDetailsModel.statistics));
        },
      );

      test(
        'should throw a ServerException '
        'when the response status code is not 200',
        () async {
          setUpMockHttpClientFailure404();

          final call = dataSource.fetchPlayerDetails;

          expect(() => call(tAccountId), throwsA(isA<ServerException>()));
        },
      );
    },
  );
}
