import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/env/env.dart';
import 'package:wassistant/core/errors/exceptions.dart';
import 'package:wassistant/features/player/data/data_sources/player_remote_data_source.dart';
import 'package:wassistant/features/player/data/models/player_info_model.dart';
import 'package:wassistant/injection_container.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockHttpClient extends Mock implements Dio {}

class MockHttpClientAdapter extends Mock implements HttpClientAdapter {}

void main() {
  PlayerRemoteDataSourceImpl dataSource;
  MockHttpClient mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    dataSource = PlayerRemoteDataSourceImpl(client: mockHttpClient);
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
    'Fetch player info data source',
    () {
      const tAccountId = 2022009820;
      final tResponse =
          jsonDecode(fixture('player_info_response')) as Map<String, dynamic>;
      final tPlayerInfoModel = PlayerInfoModel.fromJson(
        tResponse['data'][tAccountId.toString()] as Map<String, dynamic>,
      );

      test(
        'should perform a GET request on a URL with players being the endpoint',
        () async {
          setUpMockHttpClientSuccess200('player_info_response');

          await dataSource.fetchPlayerInfo(tAccountId);

          verify(mockHttpClient.get<dynamic>(
            '${env.baseURL}/account/list/',
            queryParameters: <String, dynamic>{
              'application_id': env.applicaionId,
              'account_id': tAccountId,
            },
          ));
        },
      );

      test(
        'should return player info when the response status code is 200',
        () async {
          setUpMockHttpClientSuccess200('player_info_response');

          final result = await dataSource.fetchPlayerInfo(tAccountId);

          expect(result.toJson(), equals(tPlayerInfoModel.toJson()));
          expect(result.statistics, equals(tPlayerInfoModel.statistics));
        },
      );

      test(
        'should throw a ServerException when the response status code is not 200',
        () async {
          setUpMockHttpClientFailure404();

          final call = dataSource.fetchPlayerInfo;

          expect(() => call(tAccountId), throwsA(isA<ServerException>()));
        },
      );
    },
  );
}
