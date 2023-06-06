// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Playlists _$$_PlaylistsFromJson(Map<String, dynamic> json) => _$_Playlists(
      href: json['href'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
      next: json['next'] as String?,
      offset: json['offset'] as int?,
      previous: json['previous'],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_PlaylistsToJson(_$_Playlists instance) =>
    <String, dynamic>{
      'href': instance.href,
      'items': instance.items,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };
