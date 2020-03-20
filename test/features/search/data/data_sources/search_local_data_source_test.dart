import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wassistant/core/errors/exceptions.dart';
import 'package:wassistant/features/search/data/data_sources/search_local_data_source.dart';
import 'package:wassistant/features/search/data/models/search_history_model.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  MockSharedPreferences mockSharedPreferences;
  SearchLocalDataSourceImpl dataSource;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    dataSource = SearchLocalDataSourceImpl(
      prefs: mockSharedPreferences,
    );
  });

  const tSearchHistoryModel = SearchHistoryModel(history: ['test1', 'test2']);
  final jsonString = jsonEncode(tSearchHistoryModel.toJson());

  group(
    'cacheSearchHistory',
    () {
      test(
        'should call SharedPreferences to cache SearchHistoryModel',
        () async {
          await dataSource.cacheSearchHistory(tSearchHistoryModel);

          verify(mockSharedPreferences.setString(searchHistoryKey, jsonString));
        },
      );
    },
  );

  group(
    'getSearchHistory',
    () {
      test(
        'should return SearchHistoryModel from SharedPreferences '
        'when there is one in the cache',
        () async {
          when(
            mockSharedPreferences.getString(searchHistoryKey),
          ).thenReturn(
            jsonString,
          );

          final result = await dataSource.getSearchHistory();

          verify(mockSharedPreferences.getString(searchHistoryKey));
          expect(result, equals(tSearchHistoryModel));
        },
      );

      test(
        'should throw a CacheExeption when there is not a cached value',
        () {
          when(
            mockSharedPreferences.getString(searchHistoryKey),
          ).thenReturn(
            null,
          );

          final call = dataSource.getSearchHistory;

          expect(() => call(), throwsA(isA<CacheException>()));
        },
      );
    },
  );
}
