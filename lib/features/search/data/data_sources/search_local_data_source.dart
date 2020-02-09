import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wassistant/core/enums/prefs_key.dart';

abstract class SearchLocalDataSource {
  Future<void> cacheSearchHistory(List<String> history);

  List<String> getSearchHistory();
}

final searchHistoryKey = PrefsKey.searchHistory.toString();

class SearchLocalDataSourceImpl implements SearchLocalDataSource {
  const SearchLocalDataSourceImpl({
    @required this.prefs,
  });

  final SharedPreferences prefs;

  @override
  Future<void> cacheSearchHistory(List<String> history) async {
    await prefs.setStringList(searchHistoryKey, history);
  }

  @override
  List<String> getSearchHistory() {
    return prefs.getStringList(searchHistoryKey) ?? [];
  }
}
