import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:wassistant/features/player/data/models/player_info_model.dart';
import 'package:wassistant/features/player/data/models/player_statistics_model.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tStatistics = PlayerStatisticsModel(
    battles: 3055,
    distance: 127755,
  );
  const tPlayerInfoModel = PlayerInfoModel(
    accountId: 2022009820,
    createdAt: 1544851122,
    hiddenProfile: false,
    karma: 0,
    lastBattleTime: 1578735940,
    levelingPoints: 3288,
    levelingTier: 15,
    logoutAt: 1578736870,
    nickname: 'Horta_luo',
    statsUpdatedAt: 1578736885,
    updatedAt: 1578736885,
    statistics: tStatistics,
  );

  group(
    'PlayerInfo model',
    () {
      test(
        'should be a subclass of PlayerInfo entity',
        () {
          expect(tPlayerInfoModel, isA<PlayerInfoModel>());
        },
      );
    },
  );

  group('PlayerInfoModel.fromJson', () {
    test(
      'should return a valid model when the JSON is player info',
      () {
        final jsonMap = jsonDecode(
          fixture('player_info'),
        ) as Map<String, dynamic>;
        final result = PlayerInfoModel.fromJson(jsonMap);

        expect(result, equals(tPlayerInfoModel));
      },
    );
  });

  group('PlayerInfoModel.toJson', () {
    test(
      'should return a JSON map containing the player info data',
      () {
        final result = tPlayerInfoModel.toJson();
        final expectedJsonMap = {
          'last_battle_time': 1578735940,
          'account_id': 2022009820,
          'leveling_tier': 15,
          'created_at': 1544851122,
          'leveling_points': 3288,
          'updated_at': 1578736885,
          'hidden_profile': false,
          'logout_at': 1578736870,
          'karma': 0,
          'statistics': {
            'distance': 127755,
            'battles': 3055,
          },
          'nickname': 'Horta_luo',
          'stats_updated_at': 1578736885
        };
        expect(result, expectedJsonMap);
      },
    );
  });
}
