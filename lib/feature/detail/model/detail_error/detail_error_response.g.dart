// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailErrorResponse _$$_DetailErrorResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DetailErrorResponse(
      error: json['error'] == null
          ? null
          : Error.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DetailErrorResponseToJson(
        _$_DetailErrorResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
    };
