import 'package:flex/routes/app_route_names.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../models/userModel.dart';
import '../services/profile_api_services.dart';

class UserStateController extends GetxController {
  // instant variables
  bool _isLoading = false;
  String _email = "";
  String _username = "";
  String _name = "";
  String _phoneNumber = "";
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  User _user = User();
  
  // GETTERS
  bool get isLoading => _isLoading;
  String get email => _email;
  String get username => _username;
  String get name => _name;
  String get phoneNumber => _phoneNumber;
  User get user => _user;

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

      _nameController.text = responseData["data"]["name"];
      _emailController.text = responseData["data"]["email"];
      _usernameController.text = responseData["data"]["username"];

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