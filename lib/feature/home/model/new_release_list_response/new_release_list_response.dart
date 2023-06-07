import 'package:freezed_annotation/freezed_annotation.dart';

import 'albums.dart';

part 'new_release_list_response.freezed.dart';
part 'new_release_list_response.g.dart';

@freezed
class NewReleaseListResponse with _$NewReleaseListResponse {
  factory NewReleaseListResponse({
    Albums? albums,
  }) = _NewReleaseListResponse;

  factory NewReleaseListResponse.fromJson(Map<String, dynamic> json) =>
      _$NewReleaseListResponseFromJson(json);
}
