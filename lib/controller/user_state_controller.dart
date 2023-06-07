import 'package:flex/routes/app_route_names.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../services/profile_api_services.dart';

class UserStateController extends GetxController {
  // instant variables
  bool _isLoading = false;
  String _email = "";
  String _username = "";
  String _name = "";
  String _phoneNumber = "";
  
  // GETTERS
  bool get isLoading => _isLoading;
  String get email => _email;
  String get username => _username;
  String get name => _name;
  String get phoneNumber => _phoneNumber;

  // SETTERS
  updateIsLoading(value) {
    _isLoading = value;
    update();
  }
  updateEmail(value) {
    _email = value;
    update();
  }
  updateUsername(value) {
    _username = value;
    update();
  }
  updateName(value) {
    _name = value;
    update();
  }
  updatePhoneNumber(value) {
    _phoneNumber = value;
    update();
  }
  //  GET PROFILE SERVICE
  Future<void> getProfile() async{
    updateIsLoading(true);

    var response = await ProfileApiServcies.getProfileService();
    var responseData = response!.data;
    print(responseData);

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      
      Fluttertoast.showToast(
        msg: "Retrieved!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );

      Get.toNamed(holderScreen);

    } else {
      updateIsLoading(false);

    }
    update();
  }

  //  UPDATE PROFILE SERVICE
  Future<void> updateProfile() async{
    updateIsLoading(true);

    Map<String, dynamic> details = {
      "email": _email,
      "username": _username,
      "name": _name,
      "phoneNumber": _phoneNumber
    };

    var response = await ProfileApiServcies.updateProfileService(details);
    var responseData = response!.data;
    print(responseData);

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      
      Fluttertoast.showToast(
        msg: "Retrieved!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );

      Get.toNamed(holderScreen);

    } else {
      updateIsLoading(false);

    }
    update();
  }

  
}