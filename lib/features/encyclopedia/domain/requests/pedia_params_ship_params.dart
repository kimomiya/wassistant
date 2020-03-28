import 'package:wassistant/features/encyclopedia/domain/requests/pedia_params.dart';

class PediaParamsShipParams extends PediaParams {
  // Number of returned entries (fewer can be returned, but not more than 100).
  // If the limit sent exceeds 100, a limit of 100 is applied (by default).
  // num limit;

  // Nation. Maximum limit: 100.
  // List<String> nation;

  // Result page number. Default is 1. Min value is 1.
  // num pageNo;

  // Ship ID. Maximum limit: 100.
  // List<num> shipId;

  // Ship type. Maximum limit: 100.
  // List<ShipType> type;

  static Map<String, dynamic> toParams(Map<String, dynamic> params) {
    var map = PediaParams.toParams(params);
    if (params['ship_id'] == null) {
      throw Exception('ship_id should not be empty');
    }
    map['ship_id'] = params['ship_id'];

    if (params['artillery_id'] != null) {
      map['artillery_id'] = params['artillery_id'];
    }
    if (params['dive_bomber_id'] != null) {
      map['dive_bomber_id'] = params['dive_bomber_id'];
    }
    if (params['engine_id'] != null) {
      map['engine_id'] = params['engine_id'];
    }
    if (params['fighter_id'] != null) {
      map['fighter_id'] = params['fighter_id'];
    }
    if (params['fire_control_id'] != null) {
      map['fire_control_id'] = params['fire_control_id'];
    }
    if (params['flight_control_id'] != null) {
      map['flight_control_id'] = params['flight_control_id'];
    }
    if (params['hull_id'] != null) {
      map['hull_id'] = params['hull_id'];
    }
    if (params['torpedo_bomber_id'] != null) {
      map['torpedo_bomber_id'] = params['torpedo_bomber_id'];
    }
    if (params['torpedoes_id'] != null) {
      map['torpedoes_id'] = params['torpedoes_id'];
    }
    return map;
  }
}

enum ShipType { AirCarrier, Battleship, Destroyer, Cruiser }

extension Value on ShipType {
  String get value {
    switch (this) {
      case ShipType.AirCarrier:
        return 'AirCarrier';
      case ShipType.Battleship:
        return 'Battleship';
      case ShipType.Destroyer:
        return 'Destroyer';
      case ShipType.Cruiser:
        return 'Cruiser';
      default:
        return 'Battleship';
    }
  }
}
