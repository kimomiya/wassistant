enum Realm {
  ru,
  eu,
  na,
  asia,
}

extension Value on Realm {
  String get value {
    switch (this) {
      case Realm.ru:
        return 'ru';

      case Realm.eu:
        return 'eu';

      case Realm.na:
        return 'na';

      case Realm.asia:
      default:
        return 'asia';
    }
  }
}
