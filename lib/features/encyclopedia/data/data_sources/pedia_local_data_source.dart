import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/enums/prefs_key.dart';
import '../models/pedia_history_model.dart';

abstract class PediaLocalDataSource {
  Future<void> cachePediaHistory(PediaHistoryModel history);

  Future<PediaHistoryModel> getPediaHistory();
}

final pediaHistoryKey = PrefsKey.pediaHistory.toString();

class PediaLocalDataSourceImpl implements PediaLocalDataSource {
  const PediaLocalDataSourceImpl({
    @required this.prefs,
  });

  final SharedPreferences prefs;

  @override
  Future<void> cachePediaHistory(PediaHistoryModel history) async {
    final jsonString = jsonEncode(history.toJson());
    await prefs.setString(pediaHistoryKey, jsonString);
  }

  @override
  Future<PediaHistoryModel> getPediaHistory() {
    final jsonString = prefs.getString(pediaHistoryKey);

    if (jsonString == null) {
      return Future.value(const PediaHistoryModel(history: []));
    }

    final jsonMap = jsonDecode(jsonString) as Map<String, dynamic>;
    return Future.value(PediaHistoryModel.fromJson(jsonMap));
  }
}
