import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/enums/pedia_category.dart';
import 'package:wassistant/core/enums/realm.dart';
import 'package:wassistant/core/env/env.dart';
import 'package:wassistant/core/errors/exceptions.dart';
import 'package:wassistant/features/encyclopedia/data/data_sources/pedia_remote_data_source.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_achievement_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_commander_rank_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_commander_skill_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_commander_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_info_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_module_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_ship_param_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_ship_model.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockGetIt extends Mock implements GetIt {}

class MockHttpClient extends Mock implements Dio {}

class MockHttpClientAdapter extends Mock implements HttpClientAdapter {}

void main() {
  PediaRemoteDataSource dataSource;
  MockGetIt mockLocator;
  MockHttpClient mockHttpClient;

  setUp(() {
    mockLocator = MockGetIt();
    mockHttpClient = MockHttpClient();
    dataSource = PediaRemoteDataSourceImpl(
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

  // info
  group(
    'Fetch encyclopedia info data source',
    () {
      final tResponse =
          jsonDecode(fixture('encyclopedia_info')) as Map<String, dynamic>;
      final tPediaInfoModel =
          PediaInfoModel.fromJson(tResponse['data'] as Map<String, dynamic>);

      test(
        'should perform a GET request on a URL being the endpoint',
        () async {
          setUpMockHttpClientSuccess200('encyclopedia_info');

          await dataSource.fetchPediaData(
              Realm.asia, PediaCategory.info, <String, dynamic>{});

          verify(mockHttpClient.get<dynamic>(
            PediaRemoteDataSource.getURL(Realm.asia, PediaCategory.info),
            queryParameters: <String, dynamic>{
              'application_id': tEnv.applicationId,
              'language': tEnv.language,
            },
          ));
        },
      );

      test(
        'should return PediaInfoModel '
        'when the response status code is 200',
        () async {
          setUpMockHttpClientSuccess200('encyclopedia_info');

          final result = await dataSource.fetchPediaData(
                  Realm.asia, PediaCategory.info, <String, dynamic>{})
              as PediaInfoModel;

          expect(result, equals(tPediaInfoModel));
        },
      );

      test(
        'should throw a ServerException when the response status code is not 200',
        () async {
          setUpMockHttpClientFailure404();

          final call = dataSource.fetchPediaData;

          expect(
              () => call(Realm.asia, PediaCategory.info, <String, dynamic>{}),
              throwsA(isA<ServerException>()));
        },
      );
    },
  );
}
