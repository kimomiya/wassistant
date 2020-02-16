import 'package:wassistant/features/encyclopedia/domain/requests/pedia_params.dart';

class PediaParamsShips extends PediaParams {
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

  @override
  static Map<String, dynamic> toParams(Map<String, dynamic> params) {
    final map = PediaParams.toParams(params);
    if (params['limit'] != null) {
      map['limit'] = params['limit'];
    }
    if (params['nation'] != null) {
      map['nation'] = map['nation'];
    }
    if (params['pageNo'] != null) {
      map['page_no'] = map['page_no'];
    }
    if (params['shipId'] != null) {
      map['ship_id'] = map['ship_id'];
    }
    if (params['type'] != null) {
      map['type'] = map['type'];
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
