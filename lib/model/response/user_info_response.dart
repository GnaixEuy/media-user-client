import 'package:flutter_tiktok/generated/json/base/json_convert_content.dart';
import 'package:flutter_tiktok/generated/json/base/json_field.dart';

class UserInfoResponse with JsonConvert<UserInfoResponse> {
  String id;
  String nickname;
  String portrait;
  String bio;
  String birth;
  String gender;
  String city;
  String profession;
  @JSONField(name: "create_time")
  int createTime;
}
