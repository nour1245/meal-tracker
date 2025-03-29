import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.searchLoading() = SearchLoading;
  const factory SearchState.searchSuccess(
    List<Map<String, String?>> searchResults,
  ) = SearchSuccess;
  const factory SearchState.searchError(String errorMessage) = SearchError;
}
