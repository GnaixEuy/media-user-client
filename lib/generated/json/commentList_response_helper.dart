import 'package:flutter_tiktok/model/response/comment_list_response.dart';

commentListResponseFromJson(
    CommentListResponse data, Map<String, dynamic> json) {
  data.commentList = new List<Comment>();
  if (json['commentList'] != null) {
    (json['commentList'] as List).forEach((v) {
      data.commentList.add(new Comment().fromJson(v));
    });
  }
  return data;
}

Map<String, dynamic> commentListResponseToJson(CommentListResponse entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.commentList != null) {
    data['commentList'] = entity.commentList.map((v) => v.toJson()).toList();
  }
  return data;
}

commentFromJson(Comment data, Map<String, dynamic> json) {
  if (json['id'] != null) {
    data.id = json['id'].toString();
  }
  if (json['commenterName'] != null) {
    data.commenterName = json['commenterName'].toString();
  }
  if (json['commenterHeaderUrl'] != null) {
    data.commenterHeaderUrl = json['commenterHeaderUrl'].toString();
  }
  if (json['commentContent'] != null) {
    data.commentContent = json['commentContent'].toString();
  }
  if (json['commentLike'] != null) {
    data.commentLike = json['commentLike'];
  }
  if (json['commentLikeNumber'] != null) {
    data.commentLikeNumber = json['commentLikeNumber'] is String
        ? int.tryParse(json['commentLikeNumber'])
        : json['commentLikeNumber'].toInt();
  }
  if (json['dateTime'] != null) {
    data.dateTime = json['dateTime'].toString();
  }
  return data;
}

Map<String, dynamic> commentToJson(Comment entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.id != null) {
    data['id'] = entity.id;
  }
  if (entity.commenterName != null) {
    data['commenterName'] = entity.commenterName;
  }
  if (entity.commenterHeaderUrl != null) {
    data['commenterHeaderUrl'] = entity.commenterHeaderUrl;
  }
  if (entity.commentContent != null) {
    data['commentContent'] = entity.commentContent;
  }
  if (entity.commentLike != null) {
    data['commentLike'] = entity.commentLike;
  }
  if (entity.commentLikeNumber != null) {
    data['commentLikeNumber'] = entity.commentLikeNumber;
  }
  if (entity.dateTime != null) {
    data['dateTime'] = entity.dateTime;
  }
  return data;
}
