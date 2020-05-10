part of 'search_bloc.dart';

@freezed
abstract class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchWordChanged(
    String search,
  ) = SearchWordChanged;
  const factory SearchEvent.playersSearched(
    String search,
  ) = PlayersSearched;
  const factory SearchEvent.clansSearched(
    String search,
  ) = ClansSearched;
}
