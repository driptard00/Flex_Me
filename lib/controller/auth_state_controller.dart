import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flex/storage/secureStorage.dart';

import '../routes/app_route_names.dart';
import '../services/auth_api_services.dart';

class AuthStateController extends GetxController{
  // Instant variables
  String _email = "";
  String _username = "";
  String _password = "";
  String _name = "";
  String _deviceToken = "";
  String _otp = "";
  String _pin = "";
  bool _isLoading = false;
  bool _isUsernameLoading = false;
  bool _hidePassword = true;
  String _usernameValidationResponse = "";

  // GETTERS
  String get email => _email;
  String get username => _username;
  String get password => _password;
  String get name => _password;
  String get deviceToken => _deviceToken;
  String get otp => _otp;
  String get pin => _pin;
  String get usernameValidationResponse => _usernameValidationResponse;
  bool get isLoading => _isLoading;
  bool get isUsernameLoading => _isUsernameLoading;
  bool get hidePassword => _hidePassword;

  // SETTERS
  updateEmail(value) {
    _email = value;
    update();
  }
  updateUsername(value) {
    _username = value;
    update();
  }
  updatePassword(value) {
    _password = value;
    update();
  }
  updateName(value) {
    _name = value;
    update();
  }
  updateDeviceToken(value) {
    _deviceToken = value;
    update();
  }
  updateOtp(value) {
    _otp = value;
    update();
  }
  updatePin(value) {
    _pin = value;
    update();
  }
  updateUsernameValidationResponse(value) {
    _usernameValidationResponse = value;
    update();
  }
  updateIsLoading(value) {
    _isLoading = value;
    update();
  }
  updateIsUsernameLoading(value) {
    _isUsernameLoading = value;
    update();
  }
  toggleHidePassword() {
    _hidePassword = !_hidePassword;
    update();
  }

  // REGISTER USER SERVICE
  Future<void> registerUser() async{
    updateIsLoading(true);

    Map<String, dynamic> registerDetails = {
      "email": _email,
      "username": _username,
      "password": _password,
      "name": _name,
      "device": _deviceToken
    };
    print(registerDetails);

    var response = await AuthApiServices.registerUserService(registerDetails);
    var responseData = response!.data;
    print(responseData);


    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Registration Successful!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );
      await LocalStorage().storeUserToken(responseData["token"]);
      Get.toNamed(regOtpVerificationScreen);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
          msg: responseData["error"],
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  // LOGIN USER SERVICE
  Future<void> loginUser() async{
    updateIsLoading(true);

    Map<String, dynamic> loginDetails= {
      "email": _email,
      "password": _password
    };

    var response = await AuthApiServices.loginUserService(loginDetails);
    var responseData = response!.data;

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Login Successful!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );
      await LocalStorage().storeUserToken(responseData["token"]);
      await LocalStorage().storeUserId(responseData["user"]["_id"]);

      Get.offAllNamed(getDetailScreen);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: responseData["error"],
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }
  }

  // RESEND SIGNIN OTP SERVICE
  Future<void> resendSignInOtp() async{
    updateIsLoading(true);

    Map<String, dynamic> resendDetails = {
      "email": _email,
    };

    var response = await AuthApiServices.resendRegisterOtpService(resendDetails);
    var responseData = response!.data;

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "OTP sent Successfully!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: responseData["error"],
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }
  }

  // FORGOT PASSWORD SERVICE
  Future<void> forgotPassword() async{
    updateIsLoading(true);

    Map<String, dynamic> forgotPasswordDetails = {
      "email": _email,
    };

    var response = await AuthApiServices.forgotPasswordService(forgotPasswordDetails);
    var responseData = response!.data;

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Email sent Successfully!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );

      Get.toNamed(forgotPasswordOtpScreen);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: responseData["error"],
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }
  }

  // RESET PASSWORD SERVICE
  Future<void> resetPassword() async{
    updateIsLoading(true);

    Map<String, dynamic> detail = {
      "password": _password,
    };

    var response = await AuthApiServices.resetPasswordService(detail);
    var responseData = response!.data;

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Password reset Successfully!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );

      Get.toNamed(loginScreen);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: responseData["error"],
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }
  }

  // VERIFY OTP (registration) SERVICE
  Future<void> verifyRegistrationOtp() async{ 
    updateIsLoading(true);

    Map<String, dynamic> verifyRegOtpDetails = {
      "email": _email,
      "otp": _otp,
      "username": _username
    };

    print(verifyRegOtpDetails);

    var response = await AuthApiServices.verifyRegistrationOtpService(verifyRegOtpDetails);
    var responseData = response!.data;
    print(responseData);

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "OTP Verified Successfully!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );
      await LocalStorage().storeUserToken(responseData["token"]);
      await LocalStorage().storeUserId(responseData["user"]["_id"]);
      Get.offAllNamed(createPinScreen);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: responseData["error"],
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }
  }

  // VERIFY OTP (PASSWORD) SERVICE
  Future<void> verifyPasswordOtp() async{
    updateIsLoading(true);

    Map<String, dynamic> verifyPasswordOtpDetails = {
      "email": _email,
      "otp": _otp,
    };

    var response = await AuthApiServices.verifyPasswordOtpService(verifyPasswordOtpDetails);
    var responseData = response!.data;

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "OTP Verified Successfully!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );

      Get.toNamed(resetPasswordScreen);


    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: responseData["error"],
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }
  }

  // USERNAME VALIDATION
  Future<void> usernameValidation() async{
    updateIsUsernameLoading(true);

    Map<String, dynamic> detail = {
      "username": _email,
    };

    var response = await AuthApiServices.usernameValidationService(detail);
    var responseData = response!.data;

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsUsernameLoading(false);

      updateUsernameValidationResponse(responseData["message"]);

    } else {
      updateIsLoading(false);
      updateUsernameValidationResponse(responseData["message"]);
    }
  }

  // CREATE PIN
  Future<void> createPin() async{
    updateIsLoading(true);

    Map<String, dynamic> detail = {
      "pin": _pin,
    };

    print(detail);
    var response = await AuthApiServices.createPinService(detail);
    var responseData = response!.data;
    print(responseData);

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);

      Fluttertoast.showToast(
        msg: "Pin set!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );

      Get.offAllNamed(loginScreen);

    } else {
      updateIsLoading(false);

      Fluttertoast.showToast(
        msg: "Failed!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }
  }

}