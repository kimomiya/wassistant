import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/storage_key.dart';

final storageKey = StorageKey.searchHistory.toString();

abstract class SearchLocalDataSource {
  Future<void> writeSearchHistory(List<String> history);

  Future<List<String>> readSearchHistory();
}

@injectable
@lazySingleton
@RegisterAs(SearchLocalDataSource)
class SearchLocalDataSourceImpl implements SearchLocalDataSource {
  const SearchLocalDataSourceImpl({
    @required this.prefs,
  });

  final SharedPreferences prefs;

  @override
  Future<void> writeSearchHistory(List<String> history) async {
    await prefs.setStringList(storageKey, history);
  }

  @override
  Future<List<String>> readSearchHistory() {
    return Future.value(prefs.getStringList(storageKey));
  }
}
