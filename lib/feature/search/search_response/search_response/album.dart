// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'artist.dart';
import 'external_urls.dart';
import 'image.dart';

part 'album.freezed.dart';
part 'album.g.dart';

@freezed
class Album with _$Album {
  factory Album({
    @JsonKey(name: 'album_type') String? albumType,
    List<Artist>? artists,
    @JsonKey(name: 'external_urls') ExternalUrls? externalUrls,
    String? href,
    String? id,
    List<Image>? images,
    @JsonKey(name: 'is_playable') bool? isPlayable,
    String? name,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'release_date_precision') String? releaseDatePrecision,
    @JsonKey(name: 'total_tracks') int? totalTracks,
    String? type,
    String? uri,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}
