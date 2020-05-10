// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PlayerTearOff {
  const _$PlayerTearOff();

  _Player call({@required UniqueId id, @required String nickname}) {
    return _Player(
      id: id,
      nickname: nickname,
    );
  }
}

// ignore: unused_element
const $Player = _$PlayerTearOff();

mixin _$Player {
  UniqueId get id;
  String get nickname;

  $PlayerCopyWith<Player> get copyWith;
}

abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res>;
  $Res call({UniqueId id, String nickname});
}

class _$PlayerCopyWithImpl<$Res> implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  final Player _value;
  // ignore: unused_field
  final $Res Function(Player) _then;

  @override
  $Res call({
    Object id = freezed,
    Object nickname = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
    ));
  }
}

abstract class _$PlayerCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$PlayerCopyWith(_Player value, $Res Function(_Player) then) =
      __$PlayerCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String nickname});
}

class __$PlayerCopyWithImpl<$Res> extends _$PlayerCopyWithImpl<$Res>
    implements _$PlayerCopyWith<$Res> {
  __$PlayerCopyWithImpl(_Player _value, $Res Function(_Player) _then)
      : super(_value, (v) => _then(v as _Player));

  @override
  _Player get _value => super._value as _Player;

  @override
  $Res call({
    Object id = freezed,
    Object nickname = freezed,
  }) {
    return _then(_Player(
      id: id == freezed ? _value.id : id as UniqueId,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
    ));
  }
}

class _$_Player with DiagnosticableTreeMixin implements _Player {
  const _$_Player({@required this.id, @required this.nickname})
      : assert(id != null),
        assert(nickname != null);

  @override
  final UniqueId id;
  @override
  final String nickname;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Player(id: $id, nickname: $nickname)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Player'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('nickname', nickname));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Player &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(nickname);

  @override
  _$PlayerCopyWith<_Player> get copyWith =>
      __$PlayerCopyWithImpl<_Player>(this, _$identity);
}

abstract class _Player implements Player {
  const factory _Player({@required UniqueId id, @required String nickname}) =
      _$_Player;

  @override
  UniqueId get id;
  @override
  String get nickname;
  @override
  _$PlayerCopyWith<_Player> get copyWith;
}
