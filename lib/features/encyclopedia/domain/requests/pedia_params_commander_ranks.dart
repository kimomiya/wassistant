import 'package:wassistant/features/encyclopedia/domain/requests/pedia_params.dart';

class PediaParamsCommanderRanks extends PediaParams {
  // Nation
  // String nation;

  static Map<String, dynamic> toParams(Map<String, dynamic> params) {
    var map = PediaParams.toParams(params);
    if (params['nation'] != null) {
      map['nation'] = params['nation'];
    }
    return map;
  }
}
