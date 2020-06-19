import 'package:wassistant/features/encyclopedia/data/data_sources/requests/pedia_params.dart';

class PediaParamsModule extends PediaParams {
  // Number of returned entries (fewer can be returned, but not more than 100).
  // If the limit sent exceeds 100, a limit of 100 is applied (by default).
  // num limit;

  // Module ID. Maximum limit: 100.
  // List<num> moduleId;

  // Result page number. Default is 1. Min value is 1.
  // num pageNo;

  // Module type. Maximum limit: 100.
  // List<ShipType> type;

  static Map<String, dynamic> toParams(Map<String, dynamic> params) {
    var map = PediaParams.toParams(params);
    if (params['limit'] != null) {
      map['limit'] = params['limit'];
    }
    if (params['module_id'] != null) {
      map['module_id'] = params['module_id'];
    }
    if (params['pageNo'] != null) {
      map['page_no'] = params['page_no'];
    }
    if (params['type'] != null) {
      map['type'] = params['type'];
    }
    return map;
  }
}

enum ShipType {
  Artillery,
  Torpedoes,
  Suo,
  FlightControl,
  Hull,
  Engine,
  Fighter,
  TorpedoBomber,
  DiveBomber
}

extension Value on ShipType {
  String get value {
    switch (this) {
      case ShipType.Artillery:
        return 'Main battery';
      case ShipType.Torpedoes:
        return 'Torpedo tubes';
      case ShipType.Suo:
        return 'Gun Fire Control System';
      case ShipType.FlightControl:
        return 'Flight Control';
      case ShipType.Hull:
        return 'Hull';
      case ShipType.Engine:
        return 'Engine';
      case ShipType.Fighter:
        return 'Fighter';
      case ShipType.TorpedoBomber:
        return 'Torpedo Bombers';
      case ShipType.DiveBomber:
        return 'Dive bombers';
      default:
        return 'Main battery';
    }
  }
}
