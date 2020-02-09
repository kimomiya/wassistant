import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wassistant/features/search/data/data_sources/search_local_data_source.dart';

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

  const tSearchHistory = ['test1', 'test2'];

  group(
    'cacheSearchHistory',
    () {
      test(
        'should call SharedPreferences '
        'to cache the search history',
        () async {
          await dataSource.cacheSearchHistory(tSearchHistory);

          verify(
            mockSharedPreferences.setStringList(
                searchHistoryKey, tSearchHistory),
          );
        },
      );
    },
  );

  group(
    'getSearchHistory',
    () {
      test(
        'should call SharedPreferences '
        'to get the search history',
        () {
          when(
            mockSharedPreferences.getStringList(searchHistoryKey),
          ).thenReturn(
            tSearchHistory,
          );

          final result = dataSource.getSearchHistory();

          verify(mockSharedPreferences.getStringList(searchHistoryKey));
          expect(result, tSearchHistory);
        },
      );

      test(
        'should return an empty list if no cached data',
        () {
          when(
            mockSharedPreferences.getStringList(searchHistoryKey),
          ).thenReturn(
            null,
          );

          final result = dataSource.getSearchHistory();

          verify(mockSharedPreferences.getStringList(searchHistoryKey));
          expect(result, <String>[]);
        },
      );
    },
  );
}
