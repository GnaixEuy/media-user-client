import 'dart:io';

import 'package:flutter_tiktok/model/response/upload_token_response.dart';
import 'package:flutter_tiktok/net/api.dart';
import 'package:get/get.dart';

class UploadController extends GetxController {
  UploadTokenResponse uploadResponse;
  Future<bool> uploadSingleFile(String fileSuffix, File file) async {
    var tmpFileLength = file.lengthSync();
    var tmpFileHashCode = file.hashCode.toString();
    var tmpStrs = file.path.split("/trim.");
    var tmpFileName = tmpStrs[tmpStrs.length - 1];
    var uploadTokenResponse = await Api.getSingleUploadToken(
        [fileSuffix, tmpFileHashCode, tmpFileLength.toString(), tmpFileName]);
    uploadResponse = uploadTokenResponse;
    var success = await Api.uploadSingleFile(file, uploadResponse, fileSuffix);
    return success;
  }
}
