enum PediaCategory {
  info,
  // divide line
  warships,
  ship_params,
  modules,
  consumables,
  // divide line
  commanders,
  commander_skills,
  commander_ranks,
  // divide line
  achievements,
  collections,
  collection_items,
  // divide line
  battle_types,
  maps
}

extension Value on PediaCategory {
  String get value {
    switch (this) {
      case PediaCategory.info:
        return 'info/';
      case PediaCategory.warships:
        return 'ships/';
      case PediaCategory.ship_params:
        return 'shipprofile/';
      case PediaCategory.modules:
        return 'modules/';
      case PediaCategory.consumables:
        return 'consumables/';
      case PediaCategory.commanders:
        return 'crews/';
      case PediaCategory.commander_skills:
        return 'crewskills/';
      case PediaCategory.commander_ranks:
        return 'crewranks/';
      case PediaCategory.achievements:
        return 'achievements/';
      case PediaCategory.collections:
        return 'collections/';
      case PediaCategory.collection_items:
        return 'collectioncards/';
      case PediaCategory.battle_types:
        return 'battletypes/';
      case PediaCategory.maps:
        return 'battlearenas/';
      default:
        return 'info/';
    }
  }
}
