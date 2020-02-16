import 'package:wassistant/core/enums/pedia_category.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_info_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_ships_model.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/pedia_data.dart';
import 'package:wassistant/features/encyclopedia/domain/requests/pedia_params.dart';
import 'package:wassistant/features/encyclopedia/domain/requests/pedia_params_info.dart';
import 'package:wassistant/features/encyclopedia/domain/requests/pedia_params_ships.dart';

class PediaDataPartition {
  static PediaDataInterface partition(
      PediaCategory category, Map<String, dynamic> json) {
    switch (category) {
      case PediaCategory.info:
        return PediaInfo.fromJson(json);
      case PediaCategory.warships:
        return PediaShips.fromJson(json);
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
      default:
        return PediaParams.toParams(params);
    }
  }
}
