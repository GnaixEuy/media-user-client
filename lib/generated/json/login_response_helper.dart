import 'package:flutter_tiktok/model/response/login_response.dart';

loginResponseFromJson(LoginResponse data, Map<String, dynamic> json) {
  if (json['code'] != null) {
    data.code = json['code'].toString();
  }
  if (json['id'] != null) {
    data.id = json['id'].toString();
  }
  if (json['token'] != null) {
    data.token = json['token'].toString();
  }
  return data;
}

Map<String, dynamic> loginResponseToJson(LoginResponse entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = entity.id;
  data['token'] = entity.token;
  return data;
}
