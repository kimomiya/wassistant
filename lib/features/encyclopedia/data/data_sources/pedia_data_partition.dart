import 'package:wassistant/core/enums/pedia_category.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_achievements_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_commander_ranks_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_commander_skills_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_commanders_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_info_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_modules_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_ship_params_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_ships_model.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/pedia_data.dart';
import 'package:wassistant/features/encyclopedia/domain/requests/pedia_params.dart';
import 'package:wassistant/features/encyclopedia/domain/requests/pedia_params_achievements.dart';
import 'package:wassistant/features/encyclopedia/domain/requests/pedia_params_commander_ranks.dart';
import 'package:wassistant/features/encyclopedia/domain/requests/pedia_params_commander_skills.dart';
import 'package:wassistant/features/encyclopedia/domain/requests/pedia_params_commanders.dart';
import 'package:wassistant/features/encyclopedia/domain/requests/pedia_params_info.dart';
import 'package:wassistant/features/encyclopedia/domain/requests/pedia_params_modules.dart';
import 'package:wassistant/features/encyclopedia/domain/requests/pedia_params_ship_params.dart';
import 'package:wassistant/features/encyclopedia/domain/requests/pedia_params_ships.dart';

class PediaDataPartition {
  static PediaDataInterface partition(
      PediaCategory category, Map<String, dynamic> json) {
    switch (category) {
      case PediaCategory.info:
        return PediaInfo.fromJson(json);
      case PediaCategory.warships:
        return PediaShips.fromJson(json);
      case PediaCategory.achievements:
        return PediaAchievements.fromJson(json);
      case PediaCategory.ship_params:
        return PediaShipParams.fromJson(json);
      case PediaCategory.modules:
        return PediaModules.fromJson(json);
      case PediaCategory.commanders:
        return PediaCommanders.fromJson(json);
      case PediaCategory.commander_skills:
        return PediaCommanderSkills.fromJson(json);
      case PediaCategory.commander_ranks:
        return PediaCommanderRanks.fromJson(json);
      default:
        return PediaDataInterface.fromJson(json);
    }
  }

  static Map<String, dynamic> getParams(
      PediaCategory category, Map<String, dynamic> params) {
    switch (category) {
      case PediaCategory.info:
        return PediaParamsInfo.toParams(params);
      case PediaCategory.warships:
        return PediaParamsShips.toParams(params);
      case PediaCategory.achievements:
        return PediaParamsAchievements.toParams(params);
      case PediaCategory.ship_params:
        return PediaParamsShipParams.toParams(params);
      case PediaCategory.modules:
        return PediaParamsModules.toParams(params);
      case PediaCategory.commanders:
        return PediaParamsCommanders.toParams(params);
      case PediaCategory.commander_skills:
        return PediaParamsCommanderSkills.toParams(params);
      case PediaCategory.commander_ranks:
        return PediaParamsCommanderRanks.toParams(params);
      default:
        return PediaParams.toParams(params);
    }
  }
}
