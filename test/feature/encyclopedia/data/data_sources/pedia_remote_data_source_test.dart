import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/enums/pedia_category.dart';
import 'package:wassistant/core/enums/realm.dart';
import 'package:wassistant/core/errors/exceptions.dart';
import 'package:wassistant/features/encyclopedia/data/data_sources/pedia_remote_data_source.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_info_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_ships_model.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockHttpClient extends Mock implements Dio {}

class MockHttpClientAdapter extends Mock implements HttpClientAdapter {}

void main() {
  PediaRemoteDataSource dataSource;
  MockHttpClient mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    dataSource = PediaRemoteDataSourceImpl(client: mockHttpClient);
  });

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
    'Fetch encyclopedia info data source',
    () {
      final tResponse =
          jsonDecode(fixture('encyclopedia_info')) as Map<String, dynamic>;
      final tPediaInfoModel = PediaInfo.fromJson(
        tResponse['data'] as Map<String, dynamic>,
      );

      test(
        'should perform a GET request on a URL with players being the endpoint',
        () async {
          setUpMockHttpClientSuccess200('encyclopedia_info');

          final result = await dataSource.fetchPediaData(
              Realm.asia, PediaCategory.info, <String, dynamic>{});

          expect(result.toJson(), equals(tPediaInfoModel.toJson()));
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

  group(
    'Fetch encyclopedia ships data source',
    () {
      final tResponse =
          jsonDecode(fixture('encyclopedia_ships')) as Map<String, dynamic>;
      final tPediaShipsModel = PediaShips.fromJson(
        tResponse['data'] as Map<String, dynamic>,
      );

      test(
        'should perform a GET request on a URL with players being the endpoint',
        () async {
          setUpMockHttpClientSuccess200('encyclopedia_ships');

          final result = await dataSource.fetchPediaData(
              Realm.asia, PediaCategory.warships, <String, dynamic>{});

          expect(result.toJson(), equals(tPediaShipsModel.toJson()));
        },
      );

      test(
        'should throw a ServerException when the response status code is not 200',
        () async {
          setUpMockHttpClientFailure404();

          final call = dataSource.fetchPediaData;

          expect(
              () =>
                  call(Realm.asia, PediaCategory.warships, <String, dynamic>{}),
              throwsA(isA<ServerException>()));
        },
      );
    },
  );
}
