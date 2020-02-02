import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SearchLocalDataSource {}

class SearchLocalDataSourceImpl implements SearchLocalDataSource {
  const SearchLocalDataSourceImpl({
    @required this.prefs,
  });

  final SharedPreferences prefs;
}
