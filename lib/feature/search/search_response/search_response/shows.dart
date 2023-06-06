import 'package:freezed_annotation/freezed_annotation.dart';

import 'item.dart';

part 'shows.freezed.dart';
part 'shows.g.dart';

@freezed
class Shows with _$Shows {
  factory Shows({
    String? href,
    List<Item>? items,
    int? limit,
    String? next,
    int? offset,
    dynamic previous,
    int? total,
  }) = _Shows;

  factory Shows.fromJson(Map<String, dynamic> json) => _$ShowsFromJson(json);
}
