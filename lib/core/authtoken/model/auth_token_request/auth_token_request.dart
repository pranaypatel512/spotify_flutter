import 'package:json_annotation/json_annotation.dart';

part 'auth_token_request.g.dart';

@JsonSerializable()
class AuthTokenRequest {
  @JsonKey(name: 'grant_type')
  String? grantType;
  @JsonKey(name: 'client_id')
  String? clientId;
  @JsonKey(name: 'client_secret')
  String? clientSecret;

  AuthTokenRequest({this.grantType, this.clientId, this.clientSecret});

  @override
  String toString() {
    return 'AuthTokenRequest(grantType: $grantType, clientId: $clientId, clientSecret: $clientSecret)';
  }

  factory AuthTokenRequest.fromJson(Map<String, dynamic> json) {
    return _$AuthTokenRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AuthTokenRequestToJson(this);
}
