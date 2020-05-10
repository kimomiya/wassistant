// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'search_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchHistoryTearOff {
  const _$SearchHistoryTearOff();

  _SearchHistory call({@required UniqueId id, @required String searchWord}) {
    return _SearchHistory(
      id: id,
      searchWord: searchWord,
    );
  }
}

// ignore: unused_element
const $SearchHistory = _$SearchHistoryTearOff();

mixin _$SearchHistory {
  UniqueId get id;
  String get searchWord;

  $SearchHistoryCopyWith<SearchHistory> get copyWith;
}

abstract class $SearchHistoryCopyWith<$Res> {
  factory $SearchHistoryCopyWith(
          SearchHistory value, $Res Function(SearchHistory) then) =
      _$SearchHistoryCopyWithImpl<$Res>;
  $Res call({UniqueId id, String searchWord});
}

class _$SearchHistoryCopyWithImpl<$Res>
    implements $SearchHistoryCopyWith<$Res> {
  _$SearchHistoryCopyWithImpl(this._value, this._then);

  final SearchHistory _value;
  // ignore: unused_field
  final $Res Function(SearchHistory) _then;

  @override
  $Res call({
    Object id = freezed,
    Object searchWord = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      searchWord:
          searchWord == freezed ? _value.searchWord : searchWord as String,
    ));
  }
}

abstract class _$SearchHistoryCopyWith<$Res>
    implements $SearchHistoryCopyWith<$Res> {
  factory _$SearchHistoryCopyWith(
          _SearchHistory value, $Res Function(_SearchHistory) then) =
      __$SearchHistoryCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String searchWord});
}

class __$SearchHistoryCopyWithImpl<$Res>
    extends _$SearchHistoryCopyWithImpl<$Res>
    implements _$SearchHistoryCopyWith<$Res> {
  __$SearchHistoryCopyWithImpl(
      _SearchHistory _value, $Res Function(_SearchHistory) _then)
      : super(_value, (v) => _then(v as _SearchHistory));

  @override
  _SearchHistory get _value => super._value as _SearchHistory;

  @override
  $Res call({
    Object id = freezed,
    Object searchWord = freezed,
  }) {
    return _then(_SearchHistory(
      id: id == freezed ? _value.id : id as UniqueId,
      searchWord:
          searchWord == freezed ? _value.searchWord : searchWord as String,
    ));
  }
}

class _$_SearchHistory with DiagnosticableTreeMixin implements _SearchHistory {
  const _$_SearchHistory({@required this.id, @required this.searchWord})
      : assert(id != null),
        assert(searchWord != null);

  @override
  final UniqueId id;
  @override
  final String searchWord;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchHistory(id: $id, searchWord: $searchWord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchHistory'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('searchWord', searchWord));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchHistory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.searchWord, searchWord) ||
                const DeepCollectionEquality()
                    .equals(other.searchWord, searchWord)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(searchWord);

  @override
  _$SearchHistoryCopyWith<_SearchHistory> get copyWith =>
      __$SearchHistoryCopyWithImpl<_SearchHistory>(this, _$identity);
}

abstract class _SearchHistory implements SearchHistory {
  const factory _SearchHistory(
      {@required UniqueId id, @required String searchWord}) = _$_SearchHistory;

  @override
  UniqueId get id;
  @override
  String get searchWord;
  @override
  _$SearchHistoryCopyWith<_SearchHistory> get copyWith;
}
