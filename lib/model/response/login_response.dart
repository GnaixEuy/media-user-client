import 'package:flutter_tiktok/generated/json/base/json_convert_content.dart';

class LoginResponse with JsonConvert<LoginResponse> {
  String code;
  String id;
  String token;
}
