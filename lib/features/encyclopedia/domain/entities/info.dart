import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PediaInfo extends Equatable {
  const PediaInfo({
    @required this.shipsUpdatedAt,
    @required this.shipTypes,
    @required this.language,
    @required this.shipModifications,
    @required this.shipModules,
    @required this.shipTypeImages,
    @required this.shipNations,
    @required this.gameVersion,
  });

  final int shipsUpdatedAt;
  final Map<String, dynamic> shipTypes;
  final Map<String, dynamic> language;
  final Map<String, dynamic> shipModifications;
  final Map<String, dynamic> shipModules;
  final Map<String, dynamic> shipTypeImages;
  final Map<String, dynamic> shipNations;
  final String gameVersion;

  @override
  List<Object> get props => [
        shipsUpdatedAt,
        shipTypes,
        language,
        shipModifications,
        shipModules,
        shipTypeImages,
        shipNations,
        gameVersion,
      ];
}
