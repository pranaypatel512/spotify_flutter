import 'package:freezed_annotation/freezed_annotation.dart';

import 'item.dart';

part 'playlists.freezed.dart';
part 'playlists.g.dart';

@freezed
class Playlists with _$Playlists {
  factory Playlists({
    String? href,
    List<Item>? items,
    int? limit,
    String? next,
    int? offset,
    dynamic previous,
    int? total,
  }) = _Playlists;

  factory Playlists.fromJson(Map<String, dynamic> json) =>
      _$PlaylistsFromJson(json);
}
