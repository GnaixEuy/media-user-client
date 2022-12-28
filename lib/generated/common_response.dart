import 'json/base/json_convert_content.dart';

class CommonResponse with JsonConvert<CommonResponse> {
  String message;
  int code;
  Object data;
}
