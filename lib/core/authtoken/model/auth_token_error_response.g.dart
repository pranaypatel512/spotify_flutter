// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_token_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthTokenErrorResponse _$$_AuthTokenErrorResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AuthTokenErrorResponse(
      error: json['error'] as String?,
      errorDescription: json['error_description'] as String?,
    );

Map<String, dynamic> _$$_AuthTokenErrorResponseToJson(
        _$_AuthTokenErrorResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
      'error_description': instance.errorDescription,
    };
