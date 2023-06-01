import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_flutter/core/authtoken/model/auth_token_error_response.dart';
import 'package:spotify_flutter/core/authtoken/model/auth_token_response.dart';

part 'auth_token_state.freezed.dart';

@freezed
class AuthTokenResponseState with _$AuthTokenResponseState {
  factory AuthTokenResponseState({
    @Default(null) AuthTokenResponse? authTokenResponse,
    @Default(null) AuthTokenErrorResponse? authTokenErrorResponse,
    @Default(false) bool isLoading,
  }) = _AuthTokenResponseState;
}

extension AuthTokenResponseStateBuild on String {
  AuthTokenErrorResponse toAuthTokenErrorResponseClass(String errorMessage) {
    return AuthTokenErrorResponse(
        error: errorMessage, errorDescription: errorMessage);
  }
}
