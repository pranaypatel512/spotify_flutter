import 'package:freezed_annotation/freezed_annotation.dart';

import 'artist.dart';
import 'copyright.dart';
import 'external_ids.dart';
import 'external_urls.dart';
import 'image.dart';
import 'tracks.dart';

part 'album_details_response.freezed.dart';
part 'album_details_response.g.dart';

@freezed
class AlbumDetailsResponse with _$AlbumDetailsResponse {
  factory AlbumDetailsResponse({
    @JsonKey(name: 'album_type') String? albumType,
    List<Artist>? artists,
    @JsonKey(name: 'available_markets') List<String>? availableMarkets,
    List<Copyright>? copyrights,
    @JsonKey(name: 'external_ids') ExternalIds? externalIds,
    @JsonKey(name: 'external_urls') ExternalUrls? externalUrls,
    List<dynamic>? genres,
    String? href,
    String? id,
    List<Image>? images,
    String? label,
    String? name,
    int? popularity,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'release_date_precision') String? releaseDatePrecision,
    @JsonKey(name: 'total_tracks') int? totalTracks,
    Tracks? tracks,
    String? type,
    String? uri,
  }) = _AlbumDetailsResponse;

  factory AlbumDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$AlbumDetailsResponseFromJson(json);
}
