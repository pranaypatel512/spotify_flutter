import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/model/new_release_error_response/error.dart';


part 'detail_error_response.freezed.dart';
part 'detail_error_response.g.dart';

@freezed
class DetailErrorResponse with _$DetailErrorResponse{
  factory DetailErrorResponse({
    Error? error,
  }) = _DetailErrorResponse;

  factory DetailErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailErrorResponseFromJson(json);
}
