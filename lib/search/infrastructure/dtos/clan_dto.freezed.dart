// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'clan_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ClanDto _$ClanDtoFromJson(Map<String, dynamic> json) {
  return _ClanDto.fromJson(json);
}

class _$ClanDtoTearOff {
  const _$ClanDtoTearOff();

  _ClanDto call(
      {@required @JsonKey(name: 'clan_id') int clanId,
      @required @JsonKey(name: 'created_at') String createdAt,
      @required @JsonKey(name: 'members_count') int membersCount,
      @required String name,
      @required String tag}) {
    return _ClanDto(
      clanId: clanId,
      createdAt: createdAt,
      membersCount: membersCount,
      name: name,
      tag: tag,
    );
  }
}

// ignore: unused_element
const $ClanDto = _$ClanDtoTearOff();

mixin _$ClanDto {
  @JsonKey(name: 'clan_id')
  int get clanId;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'members_count')
  int get membersCount;
  String get name;
  String get tag;

  Map<String, dynamic> toJson();
  $ClanDtoCopyWith<ClanDto> get copyWith;
}

abstract class $ClanDtoCopyWith<$Res> {
  factory $ClanDtoCopyWith(ClanDto value, $Res Function(ClanDto) then) =
      _$ClanDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'clan_id') int clanId,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'members_count') int membersCount,
      String name,
      String tag});
}

class _$ClanDtoCopyWithImpl<$Res> implements $ClanDtoCopyWith<$Res> {
  _$ClanDtoCopyWithImpl(this._value, this._then);

  final ClanDto _value;
  // ignore: unused_field
  final $Res Function(ClanDto) _then;

  @override
  $Res call({
    Object clanId = freezed,
    Object createdAt = freezed,
    Object membersCount = freezed,
    Object name = freezed,
    Object tag = freezed,
  }) {
    return _then(_value.copyWith(
      clanId: clanId == freezed ? _value.clanId : clanId as int,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      membersCount:
          membersCount == freezed ? _value.membersCount : membersCount as int,
      name: name == freezed ? _value.name : name as String,
      tag: tag == freezed ? _value.tag : tag as String,
    ));
  }
}

abstract class _$ClanDtoCopyWith<$Res> implements $ClanDtoCopyWith<$Res> {
  factory _$ClanDtoCopyWith(_ClanDto value, $Res Function(_ClanDto) then) =
      __$ClanDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'clan_id') int clanId,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'members_count') int membersCount,
      String name,
      String tag});
}

class __$ClanDtoCopyWithImpl<$Res> extends _$ClanDtoCopyWithImpl<$Res>
    implements _$ClanDtoCopyWith<$Res> {
  __$ClanDtoCopyWithImpl(_ClanDto _value, $Res Function(_ClanDto) _then)
      : super(_value, (v) => _then(v as _ClanDto));

  @override
  _ClanDto get _value => super._value as _ClanDto;

  @override
  $Res call({
    Object clanId = freezed,
    Object createdAt = freezed,
    Object membersCount = freezed,
    Object name = freezed,
    Object tag = freezed,
  }) {
    return _then(_ClanDto(
      clanId: clanId == freezed ? _value.clanId : clanId as int,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      membersCount:
          membersCount == freezed ? _value.membersCount : membersCount as int,
      name: name == freezed ? _value.name : name as String,
      tag: tag == freezed ? _value.tag : tag as String,
    ));
  }
}

@JsonSerializable()
class _$_ClanDto with DiagnosticableTreeMixin implements _ClanDto {
  const _$_ClanDto(
      {@required @JsonKey(name: 'clan_id') this.clanId,
      @required @JsonKey(name: 'created_at') this.createdAt,
      @required @JsonKey(name: 'members_count') this.membersCount,
      @required this.name,
      @required this.tag})
      : assert(clanId != null),
        assert(createdAt != null),
        assert(membersCount != null),
        assert(name != null),
        assert(tag != null);

  factory _$_ClanDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ClanDtoFromJson(json);

  @override
  @JsonKey(name: 'clan_id')
  final int clanId;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'members_count')
  final int membersCount;
  @override
  final String name;
  @override
  final String tag;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClanDto(clanId: $clanId, createdAt: $createdAt, membersCount: $membersCount, name: $name, tag: $tag)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClanDto'))
      ..add(DiagnosticsProperty('clanId', clanId))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('membersCount', membersCount))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('tag', tag));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClanDto &&
            (identical(other.clanId, clanId) ||
                const DeepCollectionEquality().equals(other.clanId, clanId)) &&
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
      const DeepCollectionEquality().hash(clanId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(membersCount) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(tag);

  @override
  _$ClanDtoCopyWith<_ClanDto> get copyWith =>
      __$ClanDtoCopyWithImpl<_ClanDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ClanDtoToJson(this);
  }
}

abstract class _ClanDto implements ClanDto {
  const factory _ClanDto(
      {@required @JsonKey(name: 'clan_id') int clanId,
      @required @JsonKey(name: 'created_at') String createdAt,
      @required @JsonKey(name: 'members_count') int membersCount,
      @required String name,
      @required String tag}) = _$_ClanDto;

  factory _ClanDto.fromJson(Map<String, dynamic> json) = _$_ClanDto.fromJson;

  @override
  @JsonKey(name: 'clan_id')
  int get clanId;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'members_count')
  int get membersCount;
  @override
  String get name;
  @override
  String get tag;
  @override
  _$ClanDtoCopyWith<_ClanDto> get copyWith;
}
