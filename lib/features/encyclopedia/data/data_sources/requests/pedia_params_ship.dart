import 'package:wassistant/features/encyclopedia/data/data_sources/requests/pedia_params.dart';

class PediaParamsShip extends PediaParams {
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
    if (params['limit'] != null) {
      map['limit'] = params['limit'];
    }
    if (params['nation'] != null) {
      map['nation'] = params['nation'];
    }
    if (params['pageNo'] != null) {
      map['page_no'] = params['page_no'];
    }
    if (params['shipId'] != null) {
      map['ship_id'] = params['ship_id'];
    }
    if (params['type'] != null) {
      map['type'] = params['type'];
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
