import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:wassistant/features/search/data/models/player_model.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tPlayerModel = PlayerModel(
    nickname: 'Horta_luo',
    accountId: 2022009820,
  );

  group(
    'Player model',
    () {
      test(
        'should be a subclass of Player entity',
        () {
          expect(tPlayerModel, isA<PlayerModel>());
        },
      );
    },
  );

  group('PlayerModel.fromJson', () {
    test(
      'should return a valid model when the JSON is a player',
      () {
        final jsonMap = jsonDecode(fixture('player')) as Map<String, dynamic>;
        final result = PlayerModel.fromJson(jsonMap);

        expect(result, equals(tPlayerModel));
      },
    );
  });

  group('PlayerModel.toJson', () {
    test(
      'should return a JSON map containing the player data',
      () {
        final result = tPlayerModel.toJson();
        final expectedJsonMap = {
          'nickname': 'Horta_luo',
          'account_id': 2022009820,
        };
        expect(result, expectedJsonMap);
      },
    );
  });
}
