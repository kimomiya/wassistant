import 'package:wassistant/features/encyclopedia/domain/requests/pedia_params.dart';

class PediaParamsCommanders extends PediaParams {
  // Commander ID. Maximum limit: 100.
  // List<num> commander_id;

  static Map<String, dynamic> toParams(Map<String, dynamic> params) {
    var map = PediaParams.toParams(params);
    if (params['commander_id'] != null) {
      map['commander_id'] = params['commander_id'];
    }
    return map;
  }
}
