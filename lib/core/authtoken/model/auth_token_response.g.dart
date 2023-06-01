// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthTokenResponse _$$_AuthTokenResponseFromJson(Map<String, dynamic> json) =>
    _$_AuthTokenResponse(
      accessToken: json['access_token'] as String?,
      tokenType: json['token_type'] as String?,
      expiresIn: json['expires_in'] as int?,
    );

Map<String, dynamic> _$$_AuthTokenResponseToJson(
        _$_AuthTokenResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
    };
