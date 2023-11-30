import 'package:dio/dio.dart';

class request {
  final Dio dio;
  request(this.dio);
  Future<String> getAns({required String Image}) async {
    try {
      Response response = await dio
          .get("https://dlmodel-001-site1.btempurl.com/api/Model/image=$Image");
      String answer = response.data;
      return answer;
    } on Exception {
      return "problem";
    }
  }
}
