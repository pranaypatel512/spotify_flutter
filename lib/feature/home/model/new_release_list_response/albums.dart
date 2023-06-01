import 'package:freezed_annotation/freezed_annotation.dart';

import 'item.dart';

part 'albums.freezed.dart';
part 'albums.g.dart';

@freezed
class Albums with _$Albums {
  factory Albums({
    String? href,
    List<Item>? items,
    int? limit,
    String? next,
    int? offset,
    dynamic previous,
    int? total,
  }) = _Albums;

  factory Albums.fromJson(Map<String, dynamic> json) => _$AlbumsFromJson(json);
}
