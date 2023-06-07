import 'package:freezed_annotation/freezed_annotation.dart';

import 'item.dart';

part 'tracks.freezed.dart';
part 'tracks.g.dart';

@freezed
class Tracks with _$Tracks {
  factory Tracks({
    String? href,
    List<Item>? items,
    int? limit,
    dynamic next,
    int? offset,
    dynamic previous,
    int? total,
  }) = _Tracks;

  factory Tracks.fromJson(Map<String, dynamic> json) => _$TracksFromJson(json);
}
