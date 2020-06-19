import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wassistant/features/encyclopedia/data/data_sources/pedia_local_data_source.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_history_model.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  MockSharedPreferences mockSharedPreferences;
  PediaLocalDataSourceImpl dataSource;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    dataSource = PediaLocalDataSourceImpl(
      prefs: mockSharedPreferences,
    );
  });

  const tPediaHistoryModel = PediaHistoryModel(history: ['test1', 'test2']);
  final jsonString = jsonEncode(tPediaHistoryModel.toJson());

  group(
    'cachePediaHistory',
    () {
      test(
        'should call SharedPreferences to cache PediaHistoryModel',
        () async {
          await dataSource.cachePediaHistory(tPediaHistoryModel);

          verify(mockSharedPreferences.setString(pediaHistoryKey, jsonString));
        },
      );
    },
  );

  group(
    'getPediaHistory',
    () {
      test(
        'should return PediaHistoryModel from SharedPreferences '
        'when there is one in the cache',
        () async {
          when(
            mockSharedPreferences.getString(pediaHistoryKey),
          ).thenReturn(
            jsonString,
          );

          final result = await dataSource.getPediaHistory();

          verify(mockSharedPreferences.getString(pediaHistoryKey));
          expect(result, equals(tPediaHistoryModel));
        },
      );

      test(
        'should return PediaHistoryModel with empty data '
        'when there is not a cached value',
        () async {
          when(
            mockSharedPreferences.getString(pediaHistoryKey),
          ).thenReturn(
            null,
          );

          final result = await dataSource.getPediaHistory();

          verify(mockSharedPreferences.getString(pediaHistoryKey));
          expect(result, equals(const PediaHistoryModel(history: [])));
        },
      );
    },
  );
}
