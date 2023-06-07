import 'package:dio/dio.dart';

import '../routes/api_routes.dart';
import '../storage/secureStorage.dart';

class AuthApiServices {
  // REGISTER USER SERVICE
  static Future<Response?> registerUserService(Map<String, dynamic> registerDetails) async{
    try {
      String fullUrl = "$baseUrl$registerRoute";
      print("FULLURL:$fullUrl");
      print("REGISTERDETAILS:$registerDetails");

      var response = await Dio().post(
        fullUrl,
        data: registerDetails
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }

  // LOGIN USER SERVICE
  static Future<Response?> loginUserService(Map<String, dynamic> loginDetails) async{
    try {
      String fullUrl = "$baseUrl$loginRoute";
      print("FULLURL:$fullUrl");
      print("LOGINDETAILS:$loginDetails");

      var response = await Dio().post(
        fullUrl,
        data: loginDetails
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }

  // LOGOUT USER SERVICE
  static Future<Response?> logoutUserService() async{
    try {
      String fullUrl = "$baseUrl$logoutRoute";
      print("FULLURL:$fullUrl");

      var response = await Dio().get(
        fullUrl,
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }

  // RESEND REG OTP SERVICE
  static Future<Response?> resendRegisterOtpService(Map<String, dynamic> resendDetails) async{
    try {
      String fullUrl = "$baseUrl$resendRegisterOtpRoute";
      print("FULLURL:$fullUrl");

      var response = await Dio().post(
        fullUrl,
        data: resendDetails
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }

  // FORGOT PASSWORD SERVICE
  static Future<Response?> forgotPasswordService(Map<String, dynamic> forgotPasswordDetails) async{
    try {
      String fullUrl = "$baseUrl$forgotPasswordRoute";
      print("FULLURL:$fullUrl");

      var response = await Dio().post(
        fullUrl,
        data: forgotPasswordDetails
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }

  // RESET PASSWORD SERVICE
  static Future<Response?> resetPasswordService(Map<String, dynamic> details) async{
    try {
      String fullUrl = "$baseUrl$resetPasswordRoute";
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

  // VERIFY OTP (REGISTRATION) SERVICE
  static Future<Response?> verifyRegistrationOtpService(Map<String, dynamic> verifyRegOtpDetails) async{
    try {
      String fullUrl = "$baseUrl$verifyRegisterOtpRoute";
      print("FULLURL:$fullUrl");

      var response = await Dio().post(
        fullUrl,
        data: verifyRegOtpDetails
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }

  // VERIFY OTP (PASSWORD) SERVICE
  static Future<Response?> verifyPasswordOtpService(Map<String, dynamic> verifyPasswordOtpDetails) async{
    try {
      String fullUrl = "$baseUrl$verifyPasswordOtpRoute";
      print("FULLURL:$fullUrl");

      var response = await Dio().post(
        fullUrl,
        data: verifyPasswordOtpDetails
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }

  // USERNAME VALIDATION ROUTE
  static Future<Response?> usernameValidationService(Map<String, dynamic> details) async{
    try {
      String fullUrl = "$baseUrl$usernameValidationRoute";
      print("FULLURL:$fullUrl");

      var response = await Dio().post(
        fullUrl,
        data: details
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }

  // CREATE PIN SERVICE
  static Future<Response?> createPinService(Map<String, dynamic> details) async{
    try {
      String fullUrl = "$baseUrl$createPinRoute";
      print("FULLURL:$fullUrl");

      String token = await LocalStorage().fetchUserToken();
      print(token);

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