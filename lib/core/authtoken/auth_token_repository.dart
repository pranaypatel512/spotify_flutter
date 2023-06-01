import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:spotify_flutter/core/authtoken/auth_token_request.dart';
import 'package:spotify_flutter/core/authtoken/auth_token_response.dart';
import 'package:spotify_flutter/core/authtoken/auth_token_state.dart';
import 'package:spotify_flutter/core/constants/network_constants.dart';
import 'package:spotify_flutter/core/netowork/dio_client.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../netowork/dio_exceptions.dart';

class AuthTokenRepository {
  final DioClient dioClient;

  AuthTokenRepository({required this.dioClient});

  Future<AuthTokenResponseState> fetchAuthToken() async {
    try {
      final response = await dioClient.post(
          NetworkConstants.baseUrlAuth, tokenRequestParams);
      //if (response.statusCode == 200) {
        return AuthTokenResponseState(
          authTokenResponse: AuthTokenResponse.fromJson(response.data),
          isLoading: false);
      //}
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e, 1).message;
      return AuthTokenResponseState(
          authTokenErrorResponse: errorMessage.toClass(errorMessage),
          isLoading: false);
    }
  }
}
