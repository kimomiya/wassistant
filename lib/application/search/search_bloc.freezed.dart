// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  SearchWordChanged searchWordChanged(String search) {
    return SearchWordChanged(
      search,
    );
  }

  PlayersSearched playersSearched(String search) {
    return PlayersSearched(
      search,
    );
  }

  ClansSearched clansSearched(String search) {
    return ClansSearched(
      search,
    );
  }
}

// ignore: unused_element
const $SearchEvent = _$SearchEventTearOff();

mixin _$SearchEvent {
  String get search;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchWordChanged(String search),
    @required Result playersSearched(String search),
    @required Result clansSearched(String search),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchWordChanged(String search),
    Result playersSearched(String search),
    Result clansSearched(String search),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchWordChanged(SearchWordChanged value),
    @required Result playersSearched(PlayersSearched value),
    @required Result clansSearched(ClansSearched value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchWordChanged(SearchWordChanged value),
    Result playersSearched(PlayersSearched value),
    Result clansSearched(ClansSearched value),
    @required Result orElse(),
  });

  $SearchEventCopyWith<SearchEvent> get copyWith;
}

abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
  $Res call({String search});
}

class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;

  @override
  $Res call({
    Object search = freezed,
  }) {
    return _then(_value.copyWith(
      search: search == freezed ? _value.search : search as String,
    ));
  }
}

abstract class $SearchWordChangedCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory $SearchWordChangedCopyWith(
          SearchWordChanged value, $Res Function(SearchWordChanged) then) =
      _$SearchWordChangedCopyWithImpl<$Res>;
  @override
  $Res call({String search});
}

class _$SearchWordChangedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $SearchWordChangedCopyWith<$Res> {
  _$SearchWordChangedCopyWithImpl(
      SearchWordChanged _value, $Res Function(SearchWordChanged) _then)
      : super(_value, (v) => _then(v as SearchWordChanged));

  @override
  SearchWordChanged get _value => super._value as SearchWordChanged;

  @override
  $Res call({
    Object search = freezed,
  }) {
    return _then(SearchWordChanged(
      search == freezed ? _value.search : search as String,
    ));
  }
}

class _$SearchWordChanged implements SearchWordChanged {
  const _$SearchWordChanged(this.search) : assert(search != null);

  @override
  final String search;

  @override
  String toString() {
    return 'SearchEvent.searchWordChanged(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchWordChanged &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(search);

  @override
  $SearchWordChangedCopyWith<SearchWordChanged> get copyWith =>
      _$SearchWordChangedCopyWithImpl<SearchWordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchWordChanged(String search),
    @required Result playersSearched(String search),
    @required Result clansSearched(String search),
  }) {
    assert(searchWordChanged != null);
    assert(playersSearched != null);
    assert(clansSearched != null);
    return searchWordChanged(search);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchWordChanged(String search),
    Result playersSearched(String search),
    Result clansSearched(String search),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchWordChanged != null) {
      return searchWordChanged(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchWordChanged(SearchWordChanged value),
    @required Result playersSearched(PlayersSearched value),
    @required Result clansSearched(ClansSearched value),
  }) {
    assert(searchWordChanged != null);
    assert(playersSearched != null);
    assert(clansSearched != null);
    return searchWordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchWordChanged(SearchWordChanged value),
    Result playersSearched(PlayersSearched value),
    Result clansSearched(ClansSearched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchWordChanged != null) {
      return searchWordChanged(this);
    }
    return orElse();
  }
}

abstract class SearchWordChanged implements SearchEvent {
  const factory SearchWordChanged(String search) = _$SearchWordChanged;

  @override
  String get search;
  @override
  $SearchWordChangedCopyWith<SearchWordChanged> get copyWith;
}

abstract class $PlayersSearchedCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory $PlayersSearchedCopyWith(
          PlayersSearched value, $Res Function(PlayersSearched) then) =
      _$PlayersSearchedCopyWithImpl<$Res>;
  @override
  $Res call({String search});
}

class _$PlayersSearchedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $PlayersSearchedCopyWith<$Res> {
  _$PlayersSearchedCopyWithImpl(
      PlayersSearched _value, $Res Function(PlayersSearched) _then)
      : super(_value, (v) => _then(v as PlayersSearched));

  @override
  PlayersSearched get _value => super._value as PlayersSearched;

  @override
  $Res call({
    Object search = freezed,
  }) {
    return _then(PlayersSearched(
      search == freezed ? _value.search : search as String,
    ));
  }
}

class _$PlayersSearched implements PlayersSearched {
  const _$PlayersSearched(this.search) : assert(search != null);

  @override
  final String search;

  @override
  String toString() {
    return 'SearchEvent.playersSearched(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlayersSearched &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(search);

  @override
  $PlayersSearchedCopyWith<PlayersSearched> get copyWith =>
      _$PlayersSearchedCopyWithImpl<PlayersSearched>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchWordChanged(String search),
    @required Result playersSearched(String search),
    @required Result clansSearched(String search),
  }) {
    assert(searchWordChanged != null);
    assert(playersSearched != null);
    assert(clansSearched != null);
    return playersSearched(search);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchWordChanged(String search),
    Result playersSearched(String search),
    Result clansSearched(String search),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (playersSearched != null) {
      return playersSearched(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchWordChanged(SearchWordChanged value),
    @required Result playersSearched(PlayersSearched value),
    @required Result clansSearched(ClansSearched value),
  }) {
    assert(searchWordChanged != null);
    assert(playersSearched != null);
    assert(clansSearched != null);
    return playersSearched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchWordChanged(SearchWordChanged value),
    Result playersSearched(PlayersSearched value),
    Result clansSearched(ClansSearched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (playersSearched != null) {
      return playersSearched(this);
    }
    return orElse();
  }
}

abstract class PlayersSearched implements SearchEvent {
  const factory PlayersSearched(String search) = _$PlayersSearched;

  @override
  String get search;
  @override
  $PlayersSearchedCopyWith<PlayersSearched> get copyWith;
}

abstract class $ClansSearchedCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory $ClansSearchedCopyWith(
          ClansSearched value, $Res Function(ClansSearched) then) =
      _$ClansSearchedCopyWithImpl<$Res>;
  @override
  $Res call({String search});
}

class _$ClansSearchedCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $ClansSearchedCopyWith<$Res> {
  _$ClansSearchedCopyWithImpl(
      ClansSearched _value, $Res Function(ClansSearched) _then)
      : super(_value, (v) => _then(v as ClansSearched));

  @override
  ClansSearched get _value => super._value as ClansSearched;

  @override
  $Res call({
    Object search = freezed,
  }) {
    return _then(ClansSearched(
      search == freezed ? _value.search : search as String,
    ));
  }
}

class _$ClansSearched implements ClansSearched {
  const _$ClansSearched(this.search) : assert(search != null);

  @override
  final String search;

  @override
  String toString() {
    return 'SearchEvent.clansSearched(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClansSearched &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(search);

  @override
  $ClansSearchedCopyWith<ClansSearched> get copyWith =>
      _$ClansSearchedCopyWithImpl<ClansSearched>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchWordChanged(String search),
    @required Result playersSearched(String search),
    @required Result clansSearched(String search),
  }) {
    assert(searchWordChanged != null);
    assert(playersSearched != null);
    assert(clansSearched != null);
    return clansSearched(search);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchWordChanged(String search),
    Result playersSearched(String search),
    Result clansSearched(String search),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clansSearched != null) {
      return clansSearched(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchWordChanged(SearchWordChanged value),
    @required Result playersSearched(PlayersSearched value),
    @required Result clansSearched(ClansSearched value),
  }) {
    assert(searchWordChanged != null);
    assert(playersSearched != null);
    assert(clansSearched != null);
    return clansSearched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchWordChanged(SearchWordChanged value),
    Result playersSearched(PlayersSearched value),
    Result clansSearched(ClansSearched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clansSearched != null) {
      return clansSearched(this);
    }
    return orElse();
  }
}

abstract class ClansSearched implements SearchEvent {
  const factory ClansSearched(String search) = _$ClansSearched;

  @override
  String get search;
  @override
  $ClansSearchedCopyWith<ClansSearched> get copyWith;
}

class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  Initial initial() {
    return const Initial();
  }

  GetSuggestibleHistorySuccess getSuggestibleHistorySuccess(
      KtList<String> history) {
    return GetSuggestibleHistorySuccess(
      history,
    );
  }

  SearchPlayersInProgress searchPlayersInProgress() {
    return const SearchPlayersInProgress();
  }

  SearchPlayersSuccess searchPlayersSuccess(KtList<Player> players) {
    return SearchPlayersSuccess(
      players,
    );
  }

  SearchPlayersFailure searchPlayersFailure(SearchFailure failure) {
    return SearchPlayersFailure(
      failure,
    );
  }

  SearchClansInProgress searchClansInProgress() {
    return const SearchClansInProgress();
  }

  SearchClansSuccess searchClansSuccess(KtList<Clan> clans) {
    return SearchClansSuccess(
      clans,
    );
  }

  SearchClansFailure searchClansFailure(SearchFailure failure) {
    return SearchClansFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

mixin _$SearchState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result getSuggestibleHistorySuccess(KtList<String> history),
    @required Result searchPlayersInProgress(),
    @required Result searchPlayersSuccess(KtList<Player> players),
    @required Result searchPlayersFailure(SearchFailure failure),
    @required Result searchClansInProgress(),
    @required Result searchClansSuccess(KtList<Clan> clans),
    @required Result searchClansFailure(SearchFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result getSuggestibleHistorySuccess(KtList<String> history),
    Result searchPlayersInProgress(),
    Result searchPlayersSuccess(KtList<Player> players),
    Result searchPlayersFailure(SearchFailure failure),
    Result searchClansInProgress(),
    Result searchClansSuccess(KtList<Clan> clans),
    Result searchClansFailure(SearchFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required
        Result getSuggestibleHistorySuccess(GetSuggestibleHistorySuccess value),
    @required Result searchPlayersInProgress(SearchPlayersInProgress value),
    @required Result searchPlayersSuccess(SearchPlayersSuccess value),
    @required Result searchPlayersFailure(SearchPlayersFailure value),
    @required Result searchClansInProgress(SearchClansInProgress value),
    @required Result searchClansSuccess(SearchClansSuccess value),
    @required Result searchClansFailure(SearchClansFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result getSuggestibleHistorySuccess(GetSuggestibleHistorySuccess value),
    Result searchPlayersInProgress(SearchPlayersInProgress value),
    Result searchPlayersSuccess(SearchPlayersSuccess value),
    Result searchPlayersFailure(SearchPlayersFailure value),
    Result searchClansInProgress(SearchClansInProgress value),
    Result searchClansSuccess(SearchClansSuccess value),
    Result searchClansFailure(SearchClansFailure value),
    @required Result orElse(),
  });
}

abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result getSuggestibleHistorySuccess(KtList<String> history),
    @required Result searchPlayersInProgress(),
    @required Result searchPlayersSuccess(KtList<Player> players),
    @required Result searchPlayersFailure(SearchFailure failure),
    @required Result searchClansInProgress(),
    @required Result searchClansSuccess(KtList<Clan> clans),
    @required Result searchClansFailure(SearchFailure failure),
  }) {
    assert(initial != null);
    assert(getSuggestibleHistorySuccess != null);
    assert(searchPlayersInProgress != null);
    assert(searchPlayersSuccess != null);
    assert(searchPlayersFailure != null);
    assert(searchClansInProgress != null);
    assert(searchClansSuccess != null);
    assert(searchClansFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result getSuggestibleHistorySuccess(KtList<String> history),
    Result searchPlayersInProgress(),
    Result searchPlayersSuccess(KtList<Player> players),
    Result searchPlayersFailure(SearchFailure failure),
    Result searchClansInProgress(),
    Result searchClansSuccess(KtList<Clan> clans),
    Result searchClansFailure(SearchFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required
        Result getSuggestibleHistorySuccess(GetSuggestibleHistorySuccess value),
    @required Result searchPlayersInProgress(SearchPlayersInProgress value),
    @required Result searchPlayersSuccess(SearchPlayersSuccess value),
    @required Result searchPlayersFailure(SearchPlayersFailure value),
    @required Result searchClansInProgress(SearchClansInProgress value),
    @required Result searchClansSuccess(SearchClansSuccess value),
    @required Result searchClansFailure(SearchClansFailure value),
  }) {
    assert(initial != null);
    assert(getSuggestibleHistorySuccess != null);
    assert(searchPlayersInProgress != null);
    assert(searchPlayersSuccess != null);
    assert(searchPlayersFailure != null);
    assert(searchClansInProgress != null);
    assert(searchClansSuccess != null);
    assert(searchClansFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result getSuggestibleHistorySuccess(GetSuggestibleHistorySuccess value),
    Result searchPlayersInProgress(SearchPlayersInProgress value),
    Result searchPlayersSuccess(SearchPlayersSuccess value),
    Result searchPlayersFailure(SearchPlayersFailure value),
    Result searchClansInProgress(SearchClansInProgress value),
    Result searchClansSuccess(SearchClansSuccess value),
    Result searchClansFailure(SearchClansFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SearchState {
  const factory Initial() = _$Initial;
}

abstract class $GetSuggestibleHistorySuccessCopyWith<$Res> {
  factory $GetSuggestibleHistorySuccessCopyWith(
          GetSuggestibleHistorySuccess value,
          $Res Function(GetSuggestibleHistorySuccess) then) =
      _$GetSuggestibleHistorySuccessCopyWithImpl<$Res>;
  $Res call({KtList<String> history});
}

class _$GetSuggestibleHistorySuccessCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $GetSuggestibleHistorySuccessCopyWith<$Res> {
  _$GetSuggestibleHistorySuccessCopyWithImpl(
      GetSuggestibleHistorySuccess _value,
      $Res Function(GetSuggestibleHistorySuccess) _then)
      : super(_value, (v) => _then(v as GetSuggestibleHistorySuccess));

  @override
  GetSuggestibleHistorySuccess get _value =>
      super._value as GetSuggestibleHistorySuccess;

  @override
  $Res call({
    Object history = freezed,
  }) {
    return _then(GetSuggestibleHistorySuccess(
      history == freezed ? _value.history : history as KtList<String>,
    ));
  }
}

class _$GetSuggestibleHistorySuccess implements GetSuggestibleHistorySuccess {
  const _$GetSuggestibleHistorySuccess(this.history) : assert(history != null);

  @override
  final KtList<String> history;

  @override
  String toString() {
    return 'SearchState.getSuggestibleHistorySuccess(history: $history)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetSuggestibleHistorySuccess &&
            (identical(other.history, history) ||
                const DeepCollectionEquality().equals(other.history, history)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(history);

  @override
  $GetSuggestibleHistorySuccessCopyWith<GetSuggestibleHistorySuccess>
      get copyWith => _$GetSuggestibleHistorySuccessCopyWithImpl<
          GetSuggestibleHistorySuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result getSuggestibleHistorySuccess(KtList<String> history),
    @required Result searchPlayersInProgress(),
    @required Result searchPlayersSuccess(KtList<Player> players),
    @required Result searchPlayersFailure(SearchFailure failure),
    @required Result searchClansInProgress(),
    @required Result searchClansSuccess(KtList<Clan> clans),
    @required Result searchClansFailure(SearchFailure failure),
  }) {
    assert(initial != null);
    assert(getSuggestibleHistorySuccess != null);
    assert(searchPlayersInProgress != null);
    assert(searchPlayersSuccess != null);
    assert(searchPlayersFailure != null);
    assert(searchClansInProgress != null);
    assert(searchClansSuccess != null);
    assert(searchClansFailure != null);
    return getSuggestibleHistorySuccess(history);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result getSuggestibleHistorySuccess(KtList<String> history),
    Result searchPlayersInProgress(),
    Result searchPlayersSuccess(KtList<Player> players),
    Result searchPlayersFailure(SearchFailure failure),
    Result searchClansInProgress(),
    Result searchClansSuccess(KtList<Clan> clans),
    Result searchClansFailure(SearchFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getSuggestibleHistorySuccess != null) {
      return getSuggestibleHistorySuccess(history);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required
        Result getSuggestibleHistorySuccess(GetSuggestibleHistorySuccess value),
    @required Result searchPlayersInProgress(SearchPlayersInProgress value),
    @required Result searchPlayersSuccess(SearchPlayersSuccess value),
    @required Result searchPlayersFailure(SearchPlayersFailure value),
    @required Result searchClansInProgress(SearchClansInProgress value),
    @required Result searchClansSuccess(SearchClansSuccess value),
    @required Result searchClansFailure(SearchClansFailure value),
  }) {
    assert(initial != null);
    assert(getSuggestibleHistorySuccess != null);
    assert(searchPlayersInProgress != null);
    assert(searchPlayersSuccess != null);
    assert(searchPlayersFailure != null);
    assert(searchClansInProgress != null);
    assert(searchClansSuccess != null);
    assert(searchClansFailure != null);
    return getSuggestibleHistorySuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result getSuggestibleHistorySuccess(GetSuggestibleHistorySuccess value),
    Result searchPlayersInProgress(SearchPlayersInProgress value),
    Result searchPlayersSuccess(SearchPlayersSuccess value),
    Result searchPlayersFailure(SearchPlayersFailure value),
    Result searchClansInProgress(SearchClansInProgress value),
    Result searchClansSuccess(SearchClansSuccess value),
    Result searchClansFailure(SearchClansFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getSuggestibleHistorySuccess != null) {
      return getSuggestibleHistorySuccess(this);
    }
    return orElse();
  }
}

abstract class GetSuggestibleHistorySuccess implements SearchState {
  const factory GetSuggestibleHistorySuccess(KtList<String> history) =
      _$GetSuggestibleHistorySuccess;

  KtList<String> get history;
  $GetSuggestibleHistorySuccessCopyWith<GetSuggestibleHistorySuccess>
      get copyWith;
}

abstract class $SearchPlayersInProgressCopyWith<$Res> {
  factory $SearchPlayersInProgressCopyWith(SearchPlayersInProgress value,
          $Res Function(SearchPlayersInProgress) then) =
      _$SearchPlayersInProgressCopyWithImpl<$Res>;
}

class _$SearchPlayersInProgressCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchPlayersInProgressCopyWith<$Res> {
  _$SearchPlayersInProgressCopyWithImpl(SearchPlayersInProgress _value,
      $Res Function(SearchPlayersInProgress) _then)
      : super(_value, (v) => _then(v as SearchPlayersInProgress));

  @override
  SearchPlayersInProgress get _value => super._value as SearchPlayersInProgress;
}

class _$SearchPlayersInProgress implements SearchPlayersInProgress {
  const _$SearchPlayersInProgress();

  @override
  String toString() {
    return 'SearchState.searchPlayersInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchPlayersInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result getSuggestibleHistorySuccess(KtList<String> history),
    @required Result searchPlayersInProgress(),
    @required Result searchPlayersSuccess(KtList<Player> players),
    @required Result searchPlayersFailure(SearchFailure failure),
    @required Result searchClansInProgress(),
    @required Result searchClansSuccess(KtList<Clan> clans),
    @required Result searchClansFailure(SearchFailure failure),
  }) {
    assert(initial != null);
    assert(getSuggestibleHistorySuccess != null);
    assert(searchPlayersInProgress != null);
    assert(searchPlayersSuccess != null);
    assert(searchPlayersFailure != null);
    assert(searchClansInProgress != null);
    assert(searchClansSuccess != null);
    assert(searchClansFailure != null);
    return searchPlayersInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result getSuggestibleHistorySuccess(KtList<String> history),
    Result searchPlayersInProgress(),
    Result searchPlayersSuccess(KtList<Player> players),
    Result searchPlayersFailure(SearchFailure failure),
    Result searchClansInProgress(),
    Result searchClansSuccess(KtList<Clan> clans),
    Result searchClansFailure(SearchFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchPlayersInProgress != null) {
      return searchPlayersInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required
        Result getSuggestibleHistorySuccess(GetSuggestibleHistorySuccess value),
    @required Result searchPlayersInProgress(SearchPlayersInProgress value),
    @required Result searchPlayersSuccess(SearchPlayersSuccess value),
    @required Result searchPlayersFailure(SearchPlayersFailure value),
    @required Result searchClansInProgress(SearchClansInProgress value),
    @required Result searchClansSuccess(SearchClansSuccess value),
    @required Result searchClansFailure(SearchClansFailure value),
  }) {
    assert(initial != null);
    assert(getSuggestibleHistorySuccess != null);
    assert(searchPlayersInProgress != null);
    assert(searchPlayersSuccess != null);
    assert(searchPlayersFailure != null);
    assert(searchClansInProgress != null);
    assert(searchClansSuccess != null);
    assert(searchClansFailure != null);
    return searchPlayersInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result getSuggestibleHistorySuccess(GetSuggestibleHistorySuccess value),
    Result searchPlayersInProgress(SearchPlayersInProgress value),
    Result searchPlayersSuccess(SearchPlayersSuccess value),
    Result searchPlayersFailure(SearchPlayersFailure value),
    Result searchClansInProgress(SearchClansInProgress value),
    Result searchClansSuccess(SearchClansSuccess value),
    Result searchClansFailure(SearchClansFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchPlayersInProgress != null) {
      return searchPlayersInProgress(this);
    }
    return orElse();
  }
}

abstract class SearchPlayersInProgress implements SearchState {
  const factory SearchPlayersInProgress() = _$SearchPlayersInProgress;
}

abstract class $SearchPlayersSuccessCopyWith<$Res> {
  factory $SearchPlayersSuccessCopyWith(SearchPlayersSuccess value,
          $Res Function(SearchPlayersSuccess) then) =
      _$SearchPlayersSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Player> players});
}

class _$SearchPlayersSuccessCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchPlayersSuccessCopyWith<$Res> {
  _$SearchPlayersSuccessCopyWithImpl(
      SearchPlayersSuccess _value, $Res Function(SearchPlayersSuccess) _then)
      : super(_value, (v) => _then(v as SearchPlayersSuccess));

  @override
  SearchPlayersSuccess get _value => super._value as SearchPlayersSuccess;

  @override
  $Res call({
    Object players = freezed,
  }) {
    return _then(SearchPlayersSuccess(
      players == freezed ? _value.players : players as KtList<Player>,
    ));
  }
}

class _$SearchPlayersSuccess implements SearchPlayersSuccess {
  const _$SearchPlayersSuccess(this.players) : assert(players != null);

  @override
  final KtList<Player> players;

  @override
  String toString() {
    return 'SearchState.searchPlayersSuccess(players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchPlayersSuccess &&
            (identical(other.players, players) ||
                const DeepCollectionEquality().equals(other.players, players)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(players);

  @override
  $SearchPlayersSuccessCopyWith<SearchPlayersSuccess> get copyWith =>
      _$SearchPlayersSuccessCopyWithImpl<SearchPlayersSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result getSuggestibleHistorySuccess(KtList<String> history),
    @required Result searchPlayersInProgress(),
    @required Result searchPlayersSuccess(KtList<Player> players),
    @required Result searchPlayersFailure(SearchFailure failure),
    @required Result searchClansInProgress(),
    @required Result searchClansSuccess(KtList<Clan> clans),
    @required Result searchClansFailure(SearchFailure failure),
  }) {
    assert(initial != null);
    assert(getSuggestibleHistorySuccess != null);
    assert(searchPlayersInProgress != null);
    assert(searchPlayersSuccess != null);
    assert(searchPlayersFailure != null);
    assert(searchClansInProgress != null);
    assert(searchClansSuccess != null);
    assert(searchClansFailure != null);
    return searchPlayersSuccess(players);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result getSuggestibleHistorySuccess(KtList<String> history),
    Result searchPlayersInProgress(),
    Result searchPlayersSuccess(KtList<Player> players),
    Result searchPlayersFailure(SearchFailure failure),
    Result searchClansInProgress(),
    Result searchClansSuccess(KtList<Clan> clans),
    Result searchClansFailure(SearchFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchPlayersSuccess != null) {
      return searchPlayersSuccess(players);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required
        Result getSuggestibleHistorySuccess(GetSuggestibleHistorySuccess value),
    @required Result searchPlayersInProgress(SearchPlayersInProgress value),
    @required Result searchPlayersSuccess(SearchPlayersSuccess value),
    @required Result searchPlayersFailure(SearchPlayersFailure value),
    @required Result searchClansInProgress(SearchClansInProgress value),
    @required Result searchClansSuccess(SearchClansSuccess value),
    @required Result searchClansFailure(SearchClansFailure value),
  }) {
    assert(initial != null);
    assert(getSuggestibleHistorySuccess != null);
    assert(searchPlayersInProgress != null);
    assert(searchPlayersSuccess != null);
    assert(searchPlayersFailure != null);
    assert(searchClansInProgress != null);
    assert(searchClansSuccess != null);
    assert(searchClansFailure != null);
    return searchPlayersSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result getSuggestibleHistorySuccess(GetSuggestibleHistorySuccess value),
    Result searchPlayersInProgress(SearchPlayersInProgress value),
    Result searchPlayersSuccess(SearchPlayersSuccess value),
    Result searchPlayersFailure(SearchPlayersFailure value),
    Result searchClansInProgress(SearchClansInProgress value),
    Result searchClansSuccess(SearchClansSuccess value),
    Result searchClansFailure(SearchClansFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchPlayersSuccess != null) {
      return searchPlayersSuccess(this);
    }
    return orElse();
  }
}

abstract class SearchPlayersSuccess implements SearchState {
  const factory SearchPlayersSuccess(KtList<Player> players) =
      _$SearchPlayersSuccess;

  KtList<Player> get players;
  $SearchPlayersSuccessCopyWith<SearchPlayersSuccess> get copyWith;
}

abstract class $SearchPlayersFailureCopyWith<$Res> {
  factory $SearchPlayersFailureCopyWith(SearchPlayersFailure value,
          $Res Function(SearchPlayersFailure) then) =
      _$SearchPlayersFailureCopyWithImpl<$Res>;
  $Res call({SearchFailure failure});

  $SearchFailureCopyWith<$Res> get failure;
}

class _$SearchPlayersFailureCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchPlayersFailureCopyWith<$Res> {
  _$SearchPlayersFailureCopyWithImpl(
      SearchPlayersFailure _value, $Res Function(SearchPlayersFailure) _then)
      : super(_value, (v) => _then(v as SearchPlayersFailure));

  @override
  SearchPlayersFailure get _value => super._value as SearchPlayersFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(SearchPlayersFailure(
      failure == freezed ? _value.failure : failure as SearchFailure,
    ));
  }

  @override
  $SearchFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $SearchFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$SearchPlayersFailure implements SearchPlayersFailure {
  const _$SearchPlayersFailure(this.failure) : assert(failure != null);

  @override
  final SearchFailure failure;

  @override
  String toString() {
    return 'SearchState.searchPlayersFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchPlayersFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $SearchPlayersFailureCopyWith<SearchPlayersFailure> get copyWith =>
      _$SearchPlayersFailureCopyWithImpl<SearchPlayersFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result getSuggestibleHistorySuccess(KtList<String> history),
    @required Result searchPlayersInProgress(),
    @required Result searchPlayersSuccess(KtList<Player> players),
    @required Result searchPlayersFailure(SearchFailure failure),
    @required Result searchClansInProgress(),
    @required Result searchClansSuccess(KtList<Clan> clans),
    @required Result searchClansFailure(SearchFailure failure),
  }) {
    assert(initial != null);
    assert(getSuggestibleHistorySuccess != null);
    assert(searchPlayersInProgress != null);
    assert(searchPlayersSuccess != null);
    assert(searchPlayersFailure != null);
    assert(searchClansInProgress != null);
    assert(searchClansSuccess != null);
    assert(searchClansFailure != null);
    return searchPlayersFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result getSuggestibleHistorySuccess(KtList<String> history),
    Result searchPlayersInProgress(),
    Result searchPlayersSuccess(KtList<Player> players),
    Result searchPlayersFailure(SearchFailure failure),
    Result searchClansInProgress(),
    Result searchClansSuccess(KtList<Clan> clans),
    Result searchClansFailure(SearchFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchPlayersFailure != null) {
      return searchPlayersFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required
        Result getSuggestibleHistorySuccess(GetSuggestibleHistorySuccess value),
    @required Result searchPlayersInProgress(SearchPlayersInProgress value),
    @required Result searchPlayersSuccess(SearchPlayersSuccess value),
    @required Result searchPlayersFailure(SearchPlayersFailure value),
    @required Result searchClansInProgress(SearchClansInProgress value),
    @required Result searchClansSuccess(SearchClansSuccess value),
    @required Result searchClansFailure(SearchClansFailure value),
  }) {
    assert(initial != null);
    assert(getSuggestibleHistorySuccess != null);
    assert(searchPlayersInProgress != null);
    assert(searchPlayersSuccess != null);
    assert(searchPlayersFailure != null);
    assert(searchClansInProgress != null);
    assert(searchClansSuccess != null);
    assert(searchClansFailure != null);
    return searchPlayersFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result getSuggestibleHistorySuccess(GetSuggestibleHistorySuccess value),
    Result searchPlayersInProgress(SearchPlayersInProgress value),
    Result searchPlayersSuccess(SearchPlayersSuccess value),
    Result searchPlayersFailure(SearchPlayersFailure value),
    Result searchClansInProgress(SearchClansInProgress value),
    Result searchClansSuccess(SearchClansSuccess value),
    Result searchClansFailure(SearchClansFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchPlayersFailure != null) {
      return searchPlayersFailure(this);
    }
    return orElse();
  }
}

abstract class SearchPlayersFailure implements SearchState {
  const factory SearchPlayersFailure(SearchFailure failure) =
      _$SearchPlayersFailure;

  SearchFailure get failure;
  $SearchPlayersFailureCopyWith<SearchPlayersFailure> get copyWith;
}

abstract class $SearchClansInProgressCopyWith<$Res> {
  factory $SearchClansInProgressCopyWith(SearchClansInProgress value,
          $Res Function(SearchClansInProgress) then) =
      _$SearchClansInProgressCopyWithImpl<$Res>;
}

class _$SearchClansInProgressCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchClansInProgressCopyWith<$Res> {
  _$SearchClansInProgressCopyWithImpl(
      SearchClansInProgress _value, $Res Function(SearchClansInProgress) _then)
      : super(_value, (v) => _then(v as SearchClansInProgress));

  @override
  SearchClansInProgress get _value => super._value as SearchClansInProgress;
}

class _$SearchClansInProgress implements SearchClansInProgress {
  const _$SearchClansInProgress();

  @override
  String toString() {
    return 'SearchState.searchClansInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchClansInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result getSuggestibleHistorySuccess(KtList<String> history),
    @required Result searchPlayersInProgress(),
    @required Result searchPlayersSuccess(KtList<Player> players),
    @required Result searchPlayersFailure(SearchFailure failure),
    @required Result searchClansInProgress(),
    @required Result searchClansSuccess(KtList<Clan> clans),
    @required Result searchClansFailure(SearchFailure failure),
  }) {
    assert(initial != null);
    assert(getSuggestibleHistorySuccess != null);
    assert(searchPlayersInProgress != null);
    assert(searchPlayersSuccess != null);
    assert(searchPlayersFailure != null);
    assert(searchClansInProgress != null);
    assert(searchClansSuccess != null);
    assert(searchClansFailure != null);
    return searchClansInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result getSuggestibleHistorySuccess(KtList<String> history),
    Result searchPlayersInProgress(),
    Result searchPlayersSuccess(KtList<Player> players),
    Result searchPlayersFailure(SearchFailure failure),
    Result searchClansInProgress(),
    Result searchClansSuccess(KtList<Clan> clans),
    Result searchClansFailure(SearchFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchClansInProgress != null) {
      return searchClansInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required
        Result getSuggestibleHistorySuccess(GetSuggestibleHistorySuccess value),
    @required Result searchPlayersInProgress(SearchPlayersInProgress value),
    @required Result searchPlayersSuccess(SearchPlayersSuccess value),
    @required Result searchPlayersFailure(SearchPlayersFailure value),
    @required Result searchClansInProgress(SearchClansInProgress value),
    @required Result searchClansSuccess(SearchClansSuccess value),
    @required Result searchClansFailure(SearchClansFailure value),
  }) {
    assert(initial != null);
    assert(getSuggestibleHistorySuccess != null);
    assert(searchPlayersInProgress != null);
    assert(searchPlayersSuccess != null);
    assert(searchPlayersFailure != null);
    assert(searchClansInProgress != null);
    assert(searchClansSuccess != null);
    assert(searchClansFailure != null);
    return searchClansInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result getSuggestibleHistorySuccess(GetSuggestibleHistorySuccess value),
    Result searchPlayersInProgress(SearchPlayersInProgress value),
    Result searchPlayersSuccess(SearchPlayersSuccess value),
    Result searchPlayersFailure(SearchPlayersFailure value),
    Result searchClansInProgress(SearchClansInProgress value),
    Result searchClansSuccess(SearchClansSuccess value),
    Result searchClansFailure(SearchClansFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchClansInProgress != null) {
      return searchClansInProgress(this);
    }
    return orElse();
  }
}

abstract class SearchClansInProgress implements SearchState {
  const factory SearchClansInProgress() = _$SearchClansInProgress;
}

abstract class $SearchClansSuccessCopyWith<$Res> {
  factory $SearchClansSuccessCopyWith(
          SearchClansSuccess value, $Res Function(SearchClansSuccess) then) =
      _$SearchClansSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Clan> clans});
}

class _$SearchClansSuccessCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchClansSuccessCopyWith<$Res> {
  _$SearchClansSuccessCopyWithImpl(
      SearchClansSuccess _value, $Res Function(SearchClansSuccess) _then)
      : super(_value, (v) => _then(v as SearchClansSuccess));

  @override
  SearchClansSuccess get _value => super._value as SearchClansSuccess;

  @override
  $Res call({
    Object clans = freezed,
  }) {
    return _then(SearchClansSuccess(
      clans == freezed ? _value.clans : clans as KtList<Clan>,
    ));
  }
}

class _$SearchClansSuccess implements SearchClansSuccess {
  const _$SearchClansSuccess(this.clans) : assert(clans != null);

  @override
  final KtList<Clan> clans;

  @override
  String toString() {
    return 'SearchState.searchClansSuccess(clans: $clans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchClansSuccess &&
            (identical(other.clans, clans) ||
                const DeepCollectionEquality().equals(other.clans, clans)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(clans);

  @override
  $SearchClansSuccessCopyWith<SearchClansSuccess> get copyWith =>
      _$SearchClansSuccessCopyWithImpl<SearchClansSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result getSuggestibleHistorySuccess(KtList<String> history),
    @required Result searchPlayersInProgress(),
    @required Result searchPlayersSuccess(KtList<Player> players),
    @required Result searchPlayersFailure(SearchFailure failure),
    @required Result searchClansInProgress(),
    @required Result searchClansSuccess(KtList<Clan> clans),
    @required Result searchClansFailure(SearchFailure failure),
  }) {
    assert(initial != null);
    assert(getSuggestibleHistorySuccess != null);
    assert(searchPlayersInProgress != null);
    assert(searchPlayersSuccess != null);
    assert(searchPlayersFailure != null);
    assert(searchClansInProgress != null);
    assert(searchClansSuccess != null);
    assert(searchClansFailure != null);
    return searchClansSuccess(clans);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result getSuggestibleHistorySuccess(KtList<String> history),
    Result searchPlayersInProgress(),
    Result searchPlayersSuccess(KtList<Player> players),
    Result searchPlayersFailure(SearchFailure failure),
    Result searchClansInProgress(),
    Result searchClansSuccess(KtList<Clan> clans),
    Result searchClansFailure(SearchFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchClansSuccess != null) {
      return searchClansSuccess(clans);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required
        Result getSuggestibleHistorySuccess(GetSuggestibleHistorySuccess value),
    @required Result searchPlayersInProgress(SearchPlayersInProgress value),
    @required Result searchPlayersSuccess(SearchPlayersSuccess value),
    @required Result searchPlayersFailure(SearchPlayersFailure value),
    @required Result searchClansInProgress(SearchClansInProgress value),
    @required Result searchClansSuccess(SearchClansSuccess value),
    @required Result searchClansFailure(SearchClansFailure value),
  }) {
    assert(initial != null);
    assert(getSuggestibleHistorySuccess != null);
    assert(searchPlayersInProgress != null);
    assert(searchPlayersSuccess != null);
    assert(searchPlayersFailure != null);
    assert(searchClansInProgress != null);
    assert(searchClansSuccess != null);
    assert(searchClansFailure != null);
    return searchClansSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result getSuggestibleHistorySuccess(GetSuggestibleHistorySuccess value),
    Result searchPlayersInProgress(SearchPlayersInProgress value),
    Result searchPlayersSuccess(SearchPlayersSuccess value),
    Result searchPlayersFailure(SearchPlayersFailure value),
    Result searchClansInProgress(SearchClansInProgress value),
    Result searchClansSuccess(SearchClansSuccess value),
    Result searchClansFailure(SearchClansFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchClansSuccess != null) {
      return searchClansSuccess(this);
    }
    return orElse();
  }
}

abstract class SearchClansSuccess implements SearchState {
  const factory SearchClansSuccess(KtList<Clan> clans) = _$SearchClansSuccess;

  KtList<Clan> get clans;
  $SearchClansSuccessCopyWith<SearchClansSuccess> get copyWith;
}

abstract class $SearchClansFailureCopyWith<$Res> {
  factory $SearchClansFailureCopyWith(
          SearchClansFailure value, $Res Function(SearchClansFailure) then) =
      _$SearchClansFailureCopyWithImpl<$Res>;
  $Res call({SearchFailure failure});

  $SearchFailureCopyWith<$Res> get failure;
}

class _$SearchClansFailureCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchClansFailureCopyWith<$Res> {
  _$SearchClansFailureCopyWithImpl(
      SearchClansFailure _value, $Res Function(SearchClansFailure) _then)
      : super(_value, (v) => _then(v as SearchClansFailure));

  @override
  SearchClansFailure get _value => super._value as SearchClansFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(SearchClansFailure(
      failure == freezed ? _value.failure : failure as SearchFailure,
    ));
  }

  @override
  $SearchFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $SearchFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$SearchClansFailure implements SearchClansFailure {
  const _$SearchClansFailure(this.failure) : assert(failure != null);

  @override
  final SearchFailure failure;

  @override
  String toString() {
    return 'SearchState.searchClansFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchClansFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $SearchClansFailureCopyWith<SearchClansFailure> get copyWith =>
      _$SearchClansFailureCopyWithImpl<SearchClansFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result getSuggestibleHistorySuccess(KtList<String> history),
    @required Result searchPlayersInProgress(),
    @required Result searchPlayersSuccess(KtList<Player> players),
    @required Result searchPlayersFailure(SearchFailure failure),
    @required Result searchClansInProgress(),
    @required Result searchClansSuccess(KtList<Clan> clans),
    @required Result searchClansFailure(SearchFailure failure),
  }) {
    assert(initial != null);
    assert(getSuggestibleHistorySuccess != null);
    assert(searchPlayersInProgress != null);
    assert(searchPlayersSuccess != null);
    assert(searchPlayersFailure != null);
    assert(searchClansInProgress != null);
    assert(searchClansSuccess != null);
    assert(searchClansFailure != null);
    return searchClansFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result getSuggestibleHistorySuccess(KtList<String> history),
    Result searchPlayersInProgress(),
    Result searchPlayersSuccess(KtList<Player> players),
    Result searchPlayersFailure(SearchFailure failure),
    Result searchClansInProgress(),
    Result searchClansSuccess(KtList<Clan> clans),
    Result searchClansFailure(SearchFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchClansFailure != null) {
      return searchClansFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required
        Result getSuggestibleHistorySuccess(GetSuggestibleHistorySuccess value),
    @required Result searchPlayersInProgress(SearchPlayersInProgress value),
    @required Result searchPlayersSuccess(SearchPlayersSuccess value),
    @required Result searchPlayersFailure(SearchPlayersFailure value),
    @required Result searchClansInProgress(SearchClansInProgress value),
    @required Result searchClansSuccess(SearchClansSuccess value),
    @required Result searchClansFailure(SearchClansFailure value),
  }) {
    assert(initial != null);
    assert(getSuggestibleHistorySuccess != null);
    assert(searchPlayersInProgress != null);
    assert(searchPlayersSuccess != null);
    assert(searchPlayersFailure != null);
    assert(searchClansInProgress != null);
    assert(searchClansSuccess != null);
    assert(searchClansFailure != null);
    return searchClansFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result getSuggestibleHistorySuccess(GetSuggestibleHistorySuccess value),
    Result searchPlayersInProgress(SearchPlayersInProgress value),
    Result searchPlayersSuccess(SearchPlayersSuccess value),
    Result searchPlayersFailure(SearchPlayersFailure value),
    Result searchClansInProgress(SearchClansInProgress value),
    Result searchClansSuccess(SearchClansSuccess value),
    Result searchClansFailure(SearchClansFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchClansFailure != null) {
      return searchClansFailure(this);
    }
    return orElse();
  }
}

abstract class SearchClansFailure implements SearchState {
  const factory SearchClansFailure(SearchFailure failure) =
      _$SearchClansFailure;

  SearchFailure get failure;
  $SearchClansFailureCopyWith<SearchClansFailure> get copyWith;
}
