import 'package:freezed_annotation/freezed_annotation.dart';

import 'error.dart';

part 'new_release_error_response.freezed.dart';
part 'new_release_error_response.g.dart';

@freezed
class NewReleaseErrorResponse with _$NewReleaseErrorResponse {
  factory NewReleaseErrorResponse({
    Error? error,
  }) = _NewReleaseErrorResponse;

  factory NewReleaseErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$NewReleaseErrorResponseFromJson(json);
}
