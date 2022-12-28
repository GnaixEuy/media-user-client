import 'package:flutter_tiktok/model/response/user_info_response.dart';

userInfoResponseFromJson(UserInfoResponse data, Map<String, dynamic> json) {
  if (json['id'] != null) {
    data.id = json['id'].toString();
  }
  if (json['nickname'] != null) {
    data.nickname = json['nickname'].toString();
  }
  if (json['portrait'] != null) {
    data.portrait = json['portrait'].toString();
  }
  if (json['bio'] != null) {
    data.bio = json['bio'].toString();
  }
  if (json['birth'] != null) {
    data.birth = json['birth'].toString();
  }
  if (json['gender'] != null) {
    data.gender = json['gender'].toString();
  }
  if (json['city'] != null) {
    data.city = json['city'].toString();
  }
  if (json['profession'] != null) {
    data.profession = json['profession'].toString();
  }
  if (json['createdDateTime'] != null) {
    data.createTime = json['createdDateTime'] is String
        ? int.tryParse(json['createdDateTime'])
        : json['createdDateTime'].toInt();
  }
  return data;
}

Map<String, dynamic> userInfoResponseToJson(UserInfoResponse entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = entity.id;
  data['nickname'] = entity.nickname;
  data['portrait'] = entity.portrait;
  data['bio'] = entity.bio;
  data['birth'] = entity.birth;
  data['gender'] = entity.gender;
  data['city'] = entity.city;
  data['profession'] = entity.profession;
  data['createdDateTime'] = entity.createTime;
  return data;
}
