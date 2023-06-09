import 'package:dio/dio.dart';

import 'package:spotify_flutter/core/authtoken/auth_token_state.dart';
import 'package:spotify_flutter/core/authtoken/model/auth_token_request/auth_token_request.dart';
import 'package:spotify_flutter/core/authtoken/model/auth_token_response.dart';
import 'package:spotify_flutter/core/constants/network_constants.dart';
import 'package:spotify_flutter/core/netowork/dio_client.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../netowork/dio_exceptions.dart';

class AuthTokenRepository {
  final DioClient dioClient;

  AuthTokenRepository({required this.dioClient});

  Future<AuthTokenResponseState> fetchAuthToken() async {
    String clientId = dotenv.env['client_id'] ?? "";
    String clientSecret = dotenv.env['client_secret'] ?? "";
    String grantType = dotenv.env['grant_type'] ?? "";

    final tokenRequestParams = AuthTokenRequest(
        clientId: clientId, clientSecret: clientSecret, grantType: grantType);
    try {
      final response = await dioClient.post(NetworkConstants.baseUrlAuth,
          data: tokenRequestParams.toJson());
      //if (response.statusCode == 200) {
      return AuthTokenResponseState(
          authTokenResponse: AuthTokenResponse.fromJson(response.data),
          isLoading: false);
      //}
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e, 1).message;
      return AuthTokenResponseState(
          authTokenErrorResponse:
              errorMessage.toAuthTokenErrorResponseClass(errorMessage),
          isLoading: false);
    }
  }
}
