// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_token_error_response.freezed.dart';
part 'auth_token_error_response.g.dart';

@freezed
class AuthTokenErrorResponse with _$AuthTokenErrorResponse {
  factory AuthTokenErrorResponse({
    String? error,
    @JsonKey(name: 'error_description') String? errorDescription,
  }) = _AuthTokenErrorResponse;

  factory AuthTokenErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenErrorResponseFromJson(json);
}
