import 'package:freezed_annotation/freezed_annotation.dart';

import 'item.dart';

part 'artists.freezed.dart';
part 'artists.g.dart';

@freezed
class Artists with _$Artists {
  factory Artists({
    String? href,
    List<Item>? items,
    int? limit,
    String? next,
    int? offset,
    dynamic previous,
    int? total,
  }) = _Artists;

  factory Artists.fromJson(Map<String, dynamic> json) =>
      _$ArtistsFromJson(json);
}
