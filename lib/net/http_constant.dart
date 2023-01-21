class HttpConstant {
  // static const String baseUrl = 'https://api.fuiboom.com';
  static const String baseUrl = 'http://192.168.1.5:16666';

  ///登录
  static const login = '/api/uaa/oauth/token';

  ///注册
  static const register = '/api/uaa/auth/register';

  ///获取用户资料信息
  static const userInfo = '/api/user/info/';

  ///获取用户资料信息(扩展)
  static const userInfoEx = '/api/user/info/detail/';

  ///获取上传凭证
  static const uploadToken = '/api/file/upload_init';

  ///上传文件
  static const uploadFile = '/api/upload/resource';

  ///发布feed
  static const publishFeed = '/api/feed/publish';

  ///获取用户发布的作品列表
  static const userFeedList = '/api/feed/user/timeline';

  ///获取热门feed（推荐）
  static const hotFeedList = '/api/feed/hot';

  ///获取好友的feed列表
  static const friendFeedList = '/api/feed/friend/timeline';

  ///关注/取消关注
  static const follow = '/api/user/follow';
}
