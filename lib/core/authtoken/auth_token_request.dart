import 'package:flutter_dotenv/flutter_dotenv.dart';

String clientId = dotenv.env['client_id'] ?? "";
String clientSecret = dotenv.env['client_secret'] ?? "";
String grantType = dotenv.env['grant_type'] ?? "";

final tokenRequestParams = {
  "client_id":clientId,
  "client_secret":clientSecret,
  "grant_type":grantType
};