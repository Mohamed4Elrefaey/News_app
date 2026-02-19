import 'package:dio/dio.dart';
import 'package:news_app/core/resources/AppConstance.dart';

class ApiManager {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(baseUrl: AppConstance.baseUrl));
  }

  static getSources(String category) async {
    try{
      var response = await dio.get(
        "/v2/top-headlines/sources",
        queryParameters: {"apiKey": AppConstance.apiKey, "category": category},
      );
      Map<String, dynamic> sourceResponse= response.data;
      print("source 1 name ${sourceResponse["sources"][0]["name"]}");
    }catch(e){
      print(e.toString());
    }
  }
}
