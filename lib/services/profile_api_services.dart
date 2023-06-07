import 'package:dio/dio.dart';

import '../routes/api_routes.dart';
import '../storage/secureStorage.dart';

class ProfileApiServcies {

  // GET PROFILE 
  static Future<Response?> getProfileService() async{
    try {
      String fullUrl = "$baseUrl$getProfileRoute";
      print("FULLURL:$fullUrl");

      String token = await LocalStorage().fetchUserToken();

      var response = await Dio().get(
        fullUrl,
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          }
        )
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }

  // UPDATE PROFILE SERVICE
  static Future<Response?> updateProfileService(Map<String, dynamic> details) async{
    try {
      String fullUrl = "$baseUrl$getProfileRoute";
      print("FULLURL:$fullUrl");

      String token = await LocalStorage().fetchUserToken();

      var response = await Dio().put(
        fullUrl,
        data: details,
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          }
        )
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }


}