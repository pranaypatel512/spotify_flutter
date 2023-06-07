// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_release_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewReleaseErrorResponse _$$_NewReleaseErrorResponseFromJson(
        Map<String, dynamic> json) =>
    _$_NewReleaseErrorResponse(
      error: json['error'] == null
          ? null
          : Error.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NewReleaseErrorResponseToJson(
        _$_NewReleaseErrorResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
    };
