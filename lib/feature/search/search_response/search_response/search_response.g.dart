// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResponse _$$_SearchResponseFromJson(Map<String, dynamic> json) =>
    _$_SearchResponse(
      albums: json['albums'] == null
          ? null
          : Albums.fromJson(json['albums'] as Map<String, dynamic>),
      artists: json['artists'] == null
          ? null
          : Artists.fromJson(json['artists'] as Map<String, dynamic>),
      tracks: json['tracks'] == null
          ? null
          : Tracks.fromJson(json['tracks'] as Map<String, dynamic>),
      playlists: json['playlists'] == null
          ? null
          : Playlists.fromJson(json['playlists'] as Map<String, dynamic>),
      shows: json['shows'] == null
          ? null
          : Shows.fromJson(json['shows'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchResponseToJson(_$_SearchResponse instance) =>
    <String, dynamic>{
      'albums': instance.albums,
      'artists': instance.artists,
      'tracks': instance.tracks,
      'playlists': instance.playlists,
      'shows': instance.shows,
    };
