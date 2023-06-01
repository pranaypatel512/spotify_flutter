import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_flutter/feature/home/model/new_release_error_response/new_release_error_response.dart';
import 'package:spotify_flutter/feature/home/model/new_release_list_response/new_release_list_response.dart';
import 'package:spotify_flutter/feature/home/model/new_release_error_response/error.dart';

part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  factory HomeScreenState({
    @Default(null) NewReleaseListResponse? newReleaseListResponse,
    @Default(null) NewReleaseErrorResponse? newReleaseErrorResponse,
    @Default(false) bool isLoading,
  }) = _HomeScreenState;
}

extension HomeScreenStateBuild on String {
  NewReleaseErrorResponse toNewReleaseErrorResponseClass(String errorMessage) {
    return NewReleaseErrorResponse(error: Error(message: errorMessage));
  }
}
