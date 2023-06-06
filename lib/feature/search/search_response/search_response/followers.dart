import 'package:freezed_annotation/freezed_annotation.dart';

part 'followers.freezed.dart';
part 'followers.g.dart';

@freezed
class Followers with _$Followers {
  factory Followers({
    dynamic href,
    int? total,
  }) = _Followers;

  factory Followers.fromJson(Map<String, dynamic> json) =>
      _$FollowersFromJson(json);
}
