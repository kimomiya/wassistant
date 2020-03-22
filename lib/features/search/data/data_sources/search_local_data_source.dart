import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/enums/prefs_key.dart';
import '../models/search_history_model.dart';

abstract class SearchLocalDataSource {
  Future<void> cacheSearchHistory(SearchHistoryModel history);

  Future<SearchHistoryModel> getSearchHistory();
}

final searchHistoryKey = PrefsKey.searchHistory.toString();

class SearchLocalDataSourceImpl implements SearchLocalDataSource {
  const SearchLocalDataSourceImpl({
    @required this.prefs,
  });

  final SharedPreferences prefs;

  @override
  Future<void> cacheSearchHistory(SearchHistoryModel history) async {
    final jsonString = jsonEncode(history.toJson());
    await prefs.setString(searchHistoryKey, jsonString);
  }

  @override
  Future<SearchHistoryModel> getSearchHistory() {
    final jsonString = prefs.getString(searchHistoryKey);

    if (jsonString == null) {
      return Future.value(const SearchHistoryModel(history: []));
    }

    final jsonMap = jsonDecode(jsonString) as Map<String, dynamic>;
    return Future.value(SearchHistoryModel.fromJson(jsonMap));
  }
}
