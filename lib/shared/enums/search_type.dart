enum SearchType {
  players,
  clans,
}

extension SearchTypeValue on SearchType {
  String get text {
    switch (this) {
      case SearchType.players:
        return 'Players';

      case SearchType.clans:
        return 'Clans';

      default:
        return '';
    }
  }
}
