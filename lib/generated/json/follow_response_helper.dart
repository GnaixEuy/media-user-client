import 'package:flutter_tiktok/model/response/follow_response.dart';

followResponseFromJson(FollowResponse data, Map<String, dynamic> json) {
  if (json['id'] != null) {
    data.id = json['id'].toString();
  }
  if (json['actionType'] != null) {
    data.actionType = json['actionType'] is String
        ? int.tryParse(json['actionType'])
        : json['actionType'].toInt();
  }
  if (json['relationUid'] != null) {
    data.relationUid = json['relationUid'] is String
        ? int.tryParse(json['relationUid'])
        : json['relationUid'].toInt();
  }
  if (json['createTime'] != null) {
    data.createTime = json['createTime'] is String
        ? int.tryParse(json['createTime'])
        : json['createTime'].toInt();
  }
  return data;
}

Map<String, dynamic> followResponseToJson(FollowResponse entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = entity.id;
  data['actionType'] = entity.actionType;
  data['relationUid'] = entity.relationUid;
  data['createTime'] = entity.createTime;
  return data;
}
