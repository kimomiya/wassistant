import '../../../../core/enums/pedia_category.dart';
import '../models/pedia_data_achievement_model.dart';
import '../models/pedia_data_commander_model.dart';
import '../models/pedia_data_commander_rank_model.dart';
import '../models/pedia_data_commander_skill_model.dart';
import '../models/pedia_data_info_model.dart';
import '../models/pedia_data_module_model.dart';
import '../models/pedia_data_ship_model.dart';
import '../models/pedia_data_ship_param_model.dart';
import '../models/pedia_json_data.dart';
import 'requests/pedia_params.dart';
import 'requests/pedia_params_achievements.dart';
import 'requests/pedia_params_commander.dart';
import 'requests/pedia_params_commander_rank.dart';
import 'requests/pedia_params_commander_skill.dart';
import 'requests/pedia_params_info.dart';
import 'requests/pedia_params_module.dart';
import 'requests/pedia_params_ship.dart';
import 'requests/pedia_params_ship_param.dart';

class PediaDataPartition {
  static PediaJsonData partition(
      PediaCategory category, Map<String, dynamic> json) {
    switch (category) {
      case PediaCategory.info:
        return PediaInfoModel.fromJson(json);
      case PediaCategory.warships:
        return PediaShipModel.fromJson(json);
      case PediaCategory.achievements:
        return PediaAchievementModel.fromJson(json);
      case PediaCategory.ship_params:
        return PediaShipParamModel.fromJson(json);
      case PediaCategory.modules:
        return PediaModuleModel.fromJson(json);
      case PediaCategory.commanders:
        return PediaCommanderModel.fromJson(json);
      case PediaCategory.commander_skills:
        return PediaCommanderSkillModel.fromJson(json);
      case PediaCategory.commander_ranks:
        return PediaCommanderRankModel.fromJson(json);
      default:
        return PediaJsonData.fromJson(json);
    }
  }

  static Map<String, dynamic> getParams(
      PediaCategory category, Map<String, dynamic> params) {
    switch (category) {
      case PediaCategory.info:
        return PediaParamsInfo.toParams(params);
      case PediaCategory.warships:
        return PediaParamsShip.toParams(params);
      case PediaCategory.achievements:
        return PediaParamsAchievements.toParams(params);
      case PediaCategory.ship_params:
        return PediaParamsShipParam.toParams(params);
      case PediaCategory.modules:
        return PediaParamsModule.toParams(params);
      case PediaCategory.commanders:
        return PediaParamsCommander.toParams(params);
      case PediaCategory.commander_skills:
        return PediaParamsCommanderSkill.toParams(params);
      case PediaCategory.commander_ranks:
        return PediaParamsCommanderRank.toParams(params);
      default:
        return PediaParams.toParams(params);
    }
  }
}
