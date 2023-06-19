import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_flutter/feature/home/model/new_release_error_response/new_release_error_response.dart';
import 'package:spotify_flutter/feature/search/search_response/search_response/search_response.dart';

part 'search_screen_state.freezed.dart';

@freezed
class SearchScreenState with _$SearchScreenState {
  factory SearchScreenState({
    @Default(null) SearchResponse? searchResponse,
    @Default(null) NewReleaseErrorResponse? newReleaseErrorResponse,
    @Default(false) bool isLoading,
    @Default(true) bool isBlankResponse,
  }) = _SearchScreenState;
}
