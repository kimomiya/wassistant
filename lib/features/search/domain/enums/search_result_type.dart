enum SearchResultType {
  players,
  clans,
}

extension Values on SearchResultType {
  String get text {
    switch (this) {
      case SearchResultType.players:
        return 'Players';

      case SearchResultType.clans:
        return 'Clans';

      default:
        return '';
    }
  }
}
