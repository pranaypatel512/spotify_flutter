import 'package:freezed_annotation/freezed_annotation.dart';

part 'copyright.freezed.dart';
part 'copyright.g.dart';

@freezed
class Copyright with _$Copyright {
  factory Copyright({
    String? text,
    String? type,
  }) = _Copyright;

  factory Copyright.fromJson(Map<String, dynamic> json) =>
      _$CopyrightFromJson(json);
}
