// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'player_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PlayerDto _$PlayerDtoFromJson(Map<String, dynamic> json) {
  return _PlayerDto.fromJson(json);
}

class _$PlayerDtoTearOff {
  const _$PlayerDtoTearOff();

  _PlayerDto call(
      {@required @JsonKey(name: 'account_id') int accountId,
      @required String nickname}) {
    return _PlayerDto(
      accountId: accountId,
      nickname: nickname,
    );
  }
}

// ignore: unused_element
const $PlayerDto = _$PlayerDtoTearOff();

mixin _$PlayerDto {
  @JsonKey(name: 'account_id')
  int get accountId;
  String get nickname;

  Map<String, dynamic> toJson();
  $PlayerDtoCopyWith<PlayerDto> get copyWith;
}

abstract class $PlayerDtoCopyWith<$Res> {
  factory $PlayerDtoCopyWith(PlayerDto value, $Res Function(PlayerDto) then) =
      _$PlayerDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'account_id') int accountId, String nickname});
}

class _$PlayerDtoCopyWithImpl<$Res> implements $PlayerDtoCopyWith<$Res> {
  _$PlayerDtoCopyWithImpl(this._value, this._then);

  final PlayerDto _value;
  // ignore: unused_field
  final $Res Function(PlayerDto) _then;

  @override
  $Res call({
    Object accountId = freezed,
    Object nickname = freezed,
  }) {
    return _then(_value.copyWith(
      accountId: accountId == freezed ? _value.accountId : accountId as int,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
    ));
  }
}

abstract class _$PlayerDtoCopyWith<$Res> implements $PlayerDtoCopyWith<$Res> {
  factory _$PlayerDtoCopyWith(
          _PlayerDto value, $Res Function(_PlayerDto) then) =
      __$PlayerDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'account_id') int accountId, String nickname});
}

class __$PlayerDtoCopyWithImpl<$Res> extends _$PlayerDtoCopyWithImpl<$Res>
    implements _$PlayerDtoCopyWith<$Res> {
  __$PlayerDtoCopyWithImpl(_PlayerDto _value, $Res Function(_PlayerDto) _then)
      : super(_value, (v) => _then(v as _PlayerDto));

  @override
  _PlayerDto get _value => super._value as _PlayerDto;

  @override
  $Res call({
    Object accountId = freezed,
    Object nickname = freezed,
  }) {
    return _then(_PlayerDto(
      accountId: accountId == freezed ? _value.accountId : accountId as int,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
    ));
  }
}

@JsonSerializable()
class _$_PlayerDto implements _PlayerDto {
  _$_PlayerDto(
      {@required @JsonKey(name: 'account_id') this.accountId,
      @required this.nickname})
      : assert(accountId != null),
        assert(nickname != null);

  factory _$_PlayerDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PlayerDtoFromJson(json);

  @override
  @JsonKey(name: 'account_id')
  final int accountId;
  @override
  final String nickname;

  @override
  String toString() {
    return 'PlayerDto(accountId: $accountId, nickname: $nickname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerDto &&
            (identical(other.accountId, accountId) ||
                const DeepCollectionEquality()
                    .equals(other.accountId, accountId)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accountId) ^
      const DeepCollectionEquality().hash(nickname);

  @override
  _$PlayerDtoCopyWith<_PlayerDto> get copyWith =>
      __$PlayerDtoCopyWithImpl<_PlayerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlayerDtoToJson(this);
  }
}

abstract class _PlayerDto implements PlayerDto {
  factory _PlayerDto(
      {@required @JsonKey(name: 'account_id') int accountId,
      @required String nickname}) = _$_PlayerDto;

  factory _PlayerDto.fromJson(Map<String, dynamic> json) =
      _$_PlayerDto.fromJson;

  @override
  @JsonKey(name: 'account_id')
  int get accountId;
  @override
  String get nickname;
  @override
  _$PlayerDtoCopyWith<_PlayerDto> get copyWith;
}
