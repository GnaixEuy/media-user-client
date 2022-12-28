import 'package:flutter_tiktok/generated/json/base/json_convert_content.dart';

class CommentListResponse extends JsonConvert<CommentListResponse> {
  List<Comment> commentList;
}

class Comment extends JsonConvert<Comment> {
  String id;
  String commenterName; //评论者的名字
  String commenterHeaderUrl; //评论者的头像
  String commentContent; //评论内容
  bool commentLike; //评论是否点赞
  int commentLikeNumber; //评论点赞数量
  String dateTime; //时间

  // Comment(this.commenterName, this.commenterHeaderUrl, this.commentContent,
  //     this.commentLike, this.commentLikeNumber, this.dateTime);
}
