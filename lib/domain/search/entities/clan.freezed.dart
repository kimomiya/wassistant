// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'clan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ClanTearOff {
  const _$ClanTearOff();

  _Clan call(
      {@required UniqueId id,
      @required String createdAt,
      @required int membersCount,
      @required String name,
      @required String tag}) {
    return _Clan(
      id: id,
      createdAt: createdAt,
      membersCount: membersCount,
      name: name,
      tag: tag,
    );
  }
}

// ignore: unused_element
const $Clan = _$ClanTearOff();

mixin _$Clan {
  UniqueId get id;
  String get createdAt;
  int get membersCount;
  String get name;
  String get tag;

  $ClanCopyWith<Clan> get copyWith;
}

abstract class $ClanCopyWith<$Res> {
  factory $ClanCopyWith(Clan value, $Res Function(Clan) then) =
      _$ClanCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String createdAt,
      int membersCount,
      String name,
      String tag});
}

class _$ClanCopyWithImpl<$Res> implements $ClanCopyWith<$Res> {
  _$ClanCopyWithImpl(this._value, this._then);

  final Clan _value;
  // ignore: unused_field
  final $Res Function(Clan) _then;

  @override
  $Res call({
    Object id = freezed,
    Object createdAt = freezed,
    Object membersCount = freezed,
    Object name = freezed,
    Object tag = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      membersCount:
          membersCount == freezed ? _value.membersCount : membersCount as int,
      name: name == freezed ? _value.name : name as String,
      tag: tag == freezed ? _value.tag : tag as String,
    ));
  }
}

abstract class _$ClanCopyWith<$Res> implements $ClanCopyWith<$Res> {
  factory _$ClanCopyWith(_Clan value, $Res Function(_Clan) then) =
      __$ClanCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String createdAt,
      int membersCount,
      String name,
      String tag});
}

class __$ClanCopyWithImpl<$Res> extends _$ClanCopyWithImpl<$Res>
    implements _$ClanCopyWith<$Res> {
  __$ClanCopyWithImpl(_Clan _value, $Res Function(_Clan) _then)
      : super(_value, (v) => _then(v as _Clan));

  @override
  _Clan get _value => super._value as _Clan;

  @override
  $Res call({
    Object id = freezed,
    Object createdAt = freezed,
    Object membersCount = freezed,
    Object name = freezed,
    Object tag = freezed,
  }) {
    return _then(_Clan(
      id: id == freezed ? _value.id : id as UniqueId,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      membersCount:
          membersCount == freezed ? _value.membersCount : membersCount as int,
      name: name == freezed ? _value.name : name as String,
      tag: tag == freezed ? _value.tag : tag as String,
    ));
  }
}

class _$_Clan with DiagnosticableTreeMixin implements _Clan {
  const _$_Clan(
      {@required this.id,
      @required this.createdAt,
      @required this.membersCount,
      @required this.name,
      @required this.tag})
      : assert(id != null),
        assert(createdAt != null),
        assert(membersCount != null),
        assert(name != null),
        assert(tag != null);

  @override
  final UniqueId id;
  @override
  final String createdAt;
  @override
  final int membersCount;
  @override
  final String name;
  @override
  final String tag;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Clan(id: $id, createdAt: $createdAt, membersCount: $membersCount, name: $name, tag: $tag)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Clan'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('membersCount', membersCount))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('tag', tag));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Clan &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.membersCount, membersCount) ||
                const DeepCollectionEquality()
                    .equals(other.membersCount, membersCount)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(membersCount) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(tag);

  @override
  _$ClanCopyWith<_Clan> get copyWith =>
      __$ClanCopyWithImpl<_Clan>(this, _$identity);
}

abstract class _Clan implements Clan {
  const factory _Clan(
      {@required UniqueId id,
      @required String createdAt,
      @required int membersCount,
      @required String name,
      @required String tag}) = _$_Clan;

  @override
  UniqueId get id;
  @override
  String get createdAt;
  @override
  int get membersCount;
  @override
  String get name;
  @override
  String get tag;
  @override
  _$ClanCopyWith<_Clan> get copyWith;
}
