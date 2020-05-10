part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.initial() = Initial;
  const factory SearchState.getSuggestibleHistorySuccess(
    KtList<String> history,
  ) = GetSuggestibleHistorySuccess;
  const factory SearchState.searchPlayersInProgress() = SearchPlayersInProgress;
  const factory SearchState.searchPlayersSuccess(
    KtList<Player> players,
  ) = SearchPlayersSuccess;
  const factory SearchState.searchPlayersFailure(
    SearchFailure failure,
  ) = SearchPlayersFailure;
  const factory SearchState.searchClansInProgress() = SearchClansInProgress;
  const factory SearchState.searchClansSuccess(
    KtList<Clan> clans,
  ) = SearchClansSuccess;
  const factory SearchState.searchClansFailure(
    SearchFailure failure,
  ) = SearchClansFailure;
}
