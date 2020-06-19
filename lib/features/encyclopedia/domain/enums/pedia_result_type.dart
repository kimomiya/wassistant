enum PediaResultType {
  achievements,
  commanders,
  commanderSkills,
  commanderRanks,
  modules,
  ships,
  shipParams,
  info,
}

extension Values on PediaResultType {
  String get text {
    switch (this) {
      case PediaResultType.achievements:
        return 'Achievements';
      case PediaResultType.commanders:
        return 'Commanders';
      case PediaResultType.commanderSkills:
        return 'CommanderSkills';
      case PediaResultType.commanderRanks:
        return 'CommanderRanks';
      case PediaResultType.modules:
        return 'Modules';
      case PediaResultType.ships:
        return 'Ships';
      case PediaResultType.shipParams:
        return 'ShipParams';
      case PediaResultType.info:
        return 'Info';

      default:
        return '';
    }
  }
}
