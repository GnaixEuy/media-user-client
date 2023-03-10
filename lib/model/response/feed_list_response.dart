import 'package:flutter_tiktok/generated/json/base/json_convert_content.dart';
import 'package:flutter_tiktok/generated/json/base/json_field.dart';

class FeedListResponse with JsonConvert<FeedListResponse> {
  @JSONField(name: "list")
  List<FeedListList> xList;
  int cursor;
  int count;
  bool hasMore;
}

class FeedListList with JsonConvert<FeedListList> {
  String id;
  int type;
  FeedListListContent content;
  FeedListListLocation location;
  String device;
  int aclType;
  int commentType;
  int createdDateTime;
  FeedListListUser user;
  int likeCount;
  int commentCount;
  int shareCount;
  int viewCount;
  bool isFollow;
  bool isLike;
}

class FeedListListContent with JsonConvert<FeedListListContent> {
  String text;
  List<FeedListListContentTag> tag;
  List<FeedListListContentAt> at;
  List<FeedListListContentAttachments> attachments;
  FeedListListContentMusic music;
}

class FeedListListContentTag with JsonConvert<FeedListListContentTag> {
  String id;
  String name;
  int start;
  int end;
}

class FeedListListContentAt with JsonConvert<FeedListListContentAt> {
  String id;
  String name;
  int start;
  int end;
}

class FeedListListContentAttachments
    with JsonConvert<FeedListListContentAttachments> {
  int type;
  String url;
  String cover;
  String gifCover;
  int duration;
  int width;
  int height;
}

class FeedListListContentMusic with JsonConvert<FeedListListContentMusic> {
  String id;
  String name;
  String url;
  String img;
}

class FeedListListLocation with JsonConvert<FeedListListLocation> {
  String latitude;
  String longitude;
  String cityCode;
  String adCode;
  String address;
  String name;
}

class FeedListListUser with JsonConvert<FeedListListUser> {
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
