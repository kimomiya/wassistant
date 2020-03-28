import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/enums/pedia_category.dart';
import 'package:wassistant/core/enums/realm.dart';
import 'package:wassistant/core/errors/exceptions.dart';
import 'package:wassistant/features/encyclopedia/data/data_sources/pedia_remote_data_source.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_achievements_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_commander_ranks_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_commander_skills_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_commanders_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_info_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_modules_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_ship_params_model.dart';
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

  // info
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
              Realm.asia, PediaCategory.info, <String, dynamic>{}) as PediaInfo;

          expect(PediaInfo.toJson(result),
              equals(PediaInfo.toJson(tPediaInfoModel)));
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

  // ships
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
                  Realm.asia, PediaCategory.warships, <String, dynamic>{})
              as PediaShips;

          expect(PediaShips.toJson(result),
              equals(PediaShips.toJson(tPediaShipsModel)));
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

  // achievements
  group(
    'Fetch encyclopedia achievements data source',
    () {
      final tResponse = jsonDecode(fixture('encyclopedia_achievements'))
          as Map<String, dynamic>;
      final tPediaAchievementsModel = PediaAchievements.fromJson(
        tResponse['data'] as Map<String, dynamic>,
      );

      test(
        'should perform a GET request on a URL with players being the endpoint',
        () async {
          setUpMockHttpClientSuccess200('encyclopedia_achievements');

          final result = await dataSource.fetchPediaData(
                  Realm.asia, PediaCategory.achievements, <String, dynamic>{})
              as PediaAchievements;

          expect(PediaAchievements.toJson(result),
              equals(PediaAchievements.toJson(tPediaAchievementsModel)));
        },
      );

      test(
        'should throw a ServerException when the response status code is not 200',
        () async {
          setUpMockHttpClientFailure404();

          final call = dataSource.fetchPediaData;

          expect(
              () => call(
                  Realm.asia, PediaCategory.achievements, <String, dynamic>{}),
              throwsA(isA<ServerException>()));
        },
      );
    },
  );

  // ship params
  group(
    'Fetch encyclopedia ship params data source',
    () {
      final tResponse = jsonDecode(fixture('encyclopedia_ship_params'))
          as Map<String, dynamic>;
      final tPediaShipParamsModel = PediaShipParams.fromJson(
        tResponse['data'] as Map<String, dynamic>,
      );

      test(
        'should perform a GET request on a URL with players being the endpoint',
        () async {
          setUpMockHttpClientSuccess200('encyclopedia_ship_params');

          var result = await dataSource.fetchPediaData(
              Realm.asia,
              PediaCategory.ship_params,
              <String, dynamic>{'ship_id': '4288624336'}) as PediaShipParams;

          Map<String, dynamic> json = PediaShipParams.toJson(result);
          expect(json, equals(PediaShipParams.toJson(tPediaShipParamsModel)));

          // result = await dataSource.fetchPediaData(
          //     Realm.asia,
          //     PediaCategory.ship_params,
          //     <String, dynamic>{'ship_id': '3332323024'}) as PediaShipParams;

          // expect(result.content.battleLevelRangeMax, equals(10));

          // result = await dataSource.fetchPediaData(
          //     Realm.asia,
          //     PediaCategory.ship_params,
          //     <String, dynamic>{'ship_id': '33323'}) as PediaShipParams;

          // expect(result.content, isNull);
        },
      );

      test(
        'should throw a ServerException when the response status code is not 200',
        () async {
          setUpMockHttpClientFailure404();

          final call = dataSource.fetchPediaData;

          expect(
              () => call(Realm.asia, PediaCategory.ship_params,
                  <String, dynamic>{'ship_id': 4288624336}),
              throwsA(isA<ServerException>()));
        },
      );
    },
  );

  // modules
  group(
    'Fetch encyclopedia modules data source',
    () {
      final tResponse =
          jsonDecode(fixture('encyclopedia_modules')) as Map<String, dynamic>;
      final tPediaModulesModel = PediaModules.fromJson(
        tResponse['data'] as Map<String, dynamic>,
      );

      test(
        'should perform a GET request on a URL with players being the endpoint',
        () async {
          setUpMockHttpClientSuccess200('encyclopedia_modules');

          var result = await dataSource.fetchPediaData(
              Realm.asia, PediaCategory.modules, <String, dynamic>{
            'module_id': <num>[3255218000, 3255578448]
          }) as PediaModules;

          Map<String, dynamic> json = PediaModules.toJson(result);
          expect(json, equals(PediaModules.toJson(tPediaModulesModel)));
        },
      );
    },
  );

  // commanders
  group(
    'Fetch encyclopedia commanders data source',
    () {
      final tResponse = jsonDecode(fixture('encyclopedia_commanders'))
          as Map<String, dynamic>;
      final tPediaCommandersModel = PediaCommanders.fromJson(
        tResponse['data'] as Map<String, dynamic>,
      );

      test(
        'should perform a GET request on a URL with players being the endpoint',
        () async {
          setUpMockHttpClientSuccess200('encyclopedia_commanders');

          var result = await dataSource.fetchPediaData(
              Realm.asia, PediaCategory.commanders, <String, dynamic>{
            'commander_id': <num>[3559040848]
          }) as PediaCommanders;

          Map<String, dynamic> json = PediaCommanders.toJson(result);
          expect(json, equals(PediaCommanders.toJson(tPediaCommandersModel)));
        },
      );
    },
  );

  // commander skills
  group(
    'Fetch encyclopedia commander skills data source',
    () {
      final tResponse = jsonDecode(fixture('encyclopedia_commander_skills'))
          as Map<String, dynamic>;
      final tPediaCommanderSkillsModel = PediaCommanderSkills.fromJson(
        tResponse['data'] as Map<String, dynamic>,
      );

      test(
        'should perform a GET request on a URL with players being the endpoint',
        () async {
          setUpMockHttpClientSuccess200('encyclopedia_commander_skills');

          var result = await dataSource.fetchPediaData(
              Realm.asia, PediaCategory.commander_skills, <String, dynamic>{
            'skill_id': <num>[1, 2, 5]
          }) as PediaCommanderSkills;

          Map<String, dynamic> json = PediaCommanderSkills.toJson(result);
          expect(json,
              equals(PediaCommanderSkills.toJson(tPediaCommanderSkillsModel)));
        },
      );
    },
  );

  // commander ranks
  group(
    'Fetch encyclopedia commander ranks data source',
    () {
      final tResponse = jsonDecode(fixture('encyclopedia_commander_ranks'))
          as Map<String, dynamic>;
      final tPediaCommanderRanksModel = PediaCommanderRanks.fromJson(
        tResponse['data'] as Map<String, dynamic>,
      );

      test(
        'should perform a GET request on a URL with players being the endpoint',
        () async {
          setUpMockHttpClientSuccess200('encyclopedia_commander_skills');

          var result = await dataSource.fetchPediaData(
              Realm.asia,
              PediaCategory.commander_ranks,
              <String, dynamic>{}) as PediaCommanderRanks;

          Map<String, dynamic> json = PediaCommanderRanks.toJson(result);
          expect(json,
              equals(PediaCommanderRanks.toJson(tPediaCommanderRanksModel)));
        },
      );
    },
  );
}
