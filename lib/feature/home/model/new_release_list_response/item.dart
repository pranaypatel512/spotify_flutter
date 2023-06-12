// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'artist.dart';
import 'external_urls.dart';
import 'image.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  factory Item({
    @JsonKey(name: 'album_type') String? albumType,
    List<Artist>? artists,
    @JsonKey(name: 'available_markets') List<String>? availableMarkets,
    @JsonKey(name: 'external_urls') ExternalUrls? externalUrls,
    String? href,
    String? id,
    List<Image>? images,
    String? name,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'release_date_precision') String? releaseDatePrecision,
    @JsonKey(name: 'total_tracks') int? totalTracks,
    String? type,
    String? uri,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
