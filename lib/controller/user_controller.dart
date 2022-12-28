import 'dart:collection';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_tiktok/common/router_manager.dart';
import 'package:flutter_tiktok/common/sp_keys.dart';
import 'package:flutter_tiktok/controller/main_page_scroll_controller.dart';
import 'package:flutter_tiktok/model/request/follow_request.dart';
import 'package:flutter_tiktok/model/response/follow_response.dart';
import 'package:flutter_tiktok/model/response/user_info_ex_response.dart';
import 'package:flutter_tiktok/model/response/user_info_response.dart';
import 'package:flutter_tiktok/model/response/user_work_list_response.dart';
import 'package:flutter_tiktok/net/api.dart';
import 'package:flutter_tiktok/util/sp_util.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  MainPageScrollController mainPageController = Get.find();
  final userInfoResponse = UserInfoResponse().obs; //用户信息
  final userInfoExResponse = UserInfoExResponse().obs; //用户信息（扩展）
  var isLoginUser = true.obs; //是否是登录用户
  final loginUserUid = "".obs; //登录用户的uid

  //--------用户作品列表-------------
  final userWorkList = <UserWorkListList>[].obs;
  int cursor = 0;
  int count = 10;
  bool hasMore = true;

  //--------用户作品列表-------------

  ///登录
  void login(String account, String pwd) async {
    var response = await Api.login(account, pwd);
    print(response.id);
    SPUtil.set(SPKeys.userUid, response.id);
    SPUtil.set(SPKeys.token, response.token);
    Get.offNamed(Routers.scroll);
    mainPageController.selectIndexBottomBarMainPage(0);
    EasyLoading.showToast('登录成功');
  }

  ///注册
  void register(String account, String pwd, String pwdRepeat) async {
    var response = await Api.register(account, pwd, pwdRepeat);
    SPUtil.set(SPKeys.userUid, response.id);
    SPUtil.set(SPKeys.token, response.token);
    Get.back();
    // Get.offAllNamed(Routers.scroll);
    mainPageController.selectIndexBottomBarMainPage(0);
    EasyLoading.showToast('注册成功');
  }

  ///获取用户资料信息
  void getUserInfo(String uid) async {
    print('获取$uid用户资料信息');
    var response = await Api.getUserInfo(uid);
    userInfoResponse.value = response;
  }

  ///获取用户资料信息(扩展)
  void getUserInfoEx(String uid) async {
    var response = await Api.getUserInfoEx(uid);
    userInfoExResponse.value = response;
  }

  ///更新用户资料
  void updateUserInfo() async {
    Map<String, dynamic> map = HashMap();
    map['id'] = userInfoResponse.value.id;
    map['nickname'] = userInfoResponse.value.nickname;
    map['portrait'] = userInfoResponse.value.portrait;
    map['bio'] = userInfoResponse.value.bio;
    map['birth'] = userInfoResponse.value.birth;
    map['gender'] = userInfoResponse.value.gender;
    map['city'] = userInfoResponse.value.city;
    map['profession'] = userInfoResponse.value.profession;
    var response = await Api.updateUserInfo(map);
    userInfoResponse.value = response;
  }

  ///判断是否是登录用户
  void isLoginUserByUid(String uid) async {
    String loginUserUid = await SPUtil.getString(SPKeys.userUid);
    if (loginUserUid == uid) {
      isLoginUser.value = true;
    } else {
      isLoginUser.value = false;
    }
  }

  ///获取登录用户的uid
  void getLoginUserUid() {
    SPUtil.getString(SPKeys.userUid).then((uid) {
      loginUserUid.value = uid;
    });
  }

  ///获取用户作品列表
  void getUserWorkList(String uid) async {
    var result = await Api.getUserFeedList(uid, cursor, count);
    userWorkList.value.clear();
    userWorkList.value.addAll(result.xList);
    cursor = result.cursor;
  }

  ///关注
  Future<FollowResponse> follow(int followType, String uid) async {
    FollowRequest request = FollowRequest();
    request.actionType = followType;
    request.relationUid = uid;
    var result = await Api.follow(request);
    return result;
  }

  bool knowIsLoginUser(uid) {
    if (loginUserUid == uid) {
      isLoginUser.value = true;
    } else {
      isLoginUser.value = false;
    }
    return isLoginUser.value;
  }
}
