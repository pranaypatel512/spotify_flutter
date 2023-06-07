import 'package:freezed_annotation/freezed_annotation.dart';

import '../../home/model/new_release_error_response/new_release_error_response.dart';
import '../album_details_response/album_details_response.dart';

part 'detail_screen_state.freezed.dart';

@freezed
class DetailScreenState with _$DetailScreenState {
  factory DetailScreenState({
    @Default(null) AlbumDetailsResponse? albumDetailResponse,
    @Default(null) NewReleaseErrorResponse? newReleaseErrorResponse,
    @Default(false) bool isLoading,
    @Default(true) bool isBlankResponse,
  }) = _DetailScreenState;
}
