import 'package:wassistant/features/encyclopedia/domain/requests/pedia_params.dart';

class PediaParamsCommanderSkills extends PediaParams {
  // Skill ID. Maximum limit: 100.
  // List<num> skill_id;

  static Map<String, dynamic> toParams(Map<String, dynamic> params) {
    var map = PediaParams.toParams(params);
    if (params['skill_id'] != null) {
      map['skill_id'] = params['skill_id'];
    }
    return map;
  }
}