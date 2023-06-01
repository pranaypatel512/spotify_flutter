// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_release_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewReleaseListResponse _$$_NewReleaseListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_NewReleaseListResponse(
      albums: json['albums'] == null
          ? null
          : Albums.fromJson(json['albums'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NewReleaseListResponseToJson(
        _$_NewReleaseListResponse instance) =>
    <String, dynamic>{
      'albums': instance.albums,
    };
