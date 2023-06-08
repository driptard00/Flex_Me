import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:flex/screens/CardsScreens/virtualCardScreen.dart';
import 'package:image_picker/image_picker.dart';

import '../models/userModel.dart';
import '../routes/app_route_names.dart';
import '../screens/MainScreens/HomeScreen/homeScreen.dart';
import '../screens/MainScreens/Settings/settingsScreen.dart';
import '../services/profile_api_services.dart';
import 'package:cloudinary_sdk/cloudinary_sdk.dart';


class AppStateController extends GetxController{

  // Instant Variables
  final List<Widget> _screens = [
    HomeScreen(),
    WalletScreen(),
    HomeScreen(),
    SettingsScreen(),
  ];
  bool _isLoading = false;
  String _email = "";
  String _username = "";
  String _name = "";
  String _phoneNumber = "";
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  final ImagePicker _imagePicker = ImagePicker();
  User _user = User();
  File? _selectedImage;
  String _imageUrl = "";
  bool get isLoading => _isLoading;
  String get email => _email;
  String get username => _username;
  String get name => _name;
  String get phoneNumber => _phoneNumber;
  User get user => _user;
  File? get selectedImage => _selectedImage;
  String get imageUrl => _imageUrl;



  final cloudinary = Cloudinary.full(
    apiKey: "729881695894599",
    apiSecret: "iQLHhe3p7GDeb9qxVufzYLMO_G8",
    cloudName: "dxy0fr9yu",
  );

  String _defaultValue = "";
  String _button1 = "";
  String _button2 = "";
  String _button3 = "";
  String _button4 = "";
  String _button5 = "";
  String _button6 = "";
  String _button7 = "";
  String _button8 = "";
  String _button9 = "";
  String _button0 = "";
  String _buttonDot = "";

  int _selectedIndex = 0;
  bool _hideBalance = false;
  bool _onSendRoute = false;

  final List<Map<String, dynamic>> _sent = [
    {
      "dateOfTransaction": "Today",
      "description": "You sent N2000 to @Garri2003",
      "amount": "2000",
      "time": "2:19pm"
    },
    {
      "dateOfTransaction": "Today",
      "description": "You sent N2000 to @Garri2003",
      "amount": "2000",
      "time": "2:19pm"
    },
    {
      "dateOfTransaction": "Today",
      "description": "You sent N2000 to @Garri2003",
      "amount": "2000",
      "time": "2:19pm"
    },
    {
      "dateOfTransaction": "Today",
      "description": "You sent N2000 to @Garri2003",
      "amount": "2000",
      "time": "2:19pm"
    },
    {
      "dateOfTransaction": "Today",
      "description": "You sent N2000 to @Garri2003",
      "amount": "2000",
      "time": "2:19pm"
    },
    {
      "dateOfTransaction": "Today",
      "description": "You sent N2000 to @Garri2003",
      "amount": "2000",
      "time": "2:19pm"
    },
    {
      "dateOfTransaction": "Today",
      "description": "You sent N2000 to @Garri2003",
      "amount": "2000",
      "time": "2:19pm"
    },
    {
      "dateOfTransaction": "Today",
      "description": "You sent N2000 to @Garri2003",
      "amount": "2000",
      "time": "2:19pm"
    },
    {
      "dateOfTransaction": "Today",
      "description": "You sent N2000 to @Garri2003",
      "amount": "2000",
      "time": "2:19pm"
    },
  ];

  final List<Map<String, dynamic>> _recieved = [
    {
      "dateOfTransaction": "Today",
      "description": "You recieved N10,000 to @Garri2003",
      "amount": "10,000",
      "time": "4:30am"
    },
    {
      "dateOfTransaction": "Today",
      "description": "You recieved N10,000 to @Garri2003",
      "amount": "10,000",
      "time": "4:30am"
    },
    {
      "dateOfTransaction": "Today",
      "description": "You recieved N10,000 to @Garri2003",
      "amount": "10,000",
      "time": "4:30am"
    },
    {
      "dateOfTransaction": "Today",
      "description": "You recieved N10,000 to @Garri2003",
      "amount": "10,000",
      "time": "4:30am"
    },
    {
      "dateOfTransaction": "Today",
      "description": "You recieved N10,000 to @Garri2003",
      "amount": "10,000",
      "time": "4:30am"
    },
    {
      "dateOfTransaction": "Today",
      "description": "You recieved N10,000 to @Garri2003",
      "amount": "10,000",
      "time": "4:30am"
    },
    {
      "dateOfTransaction": "Today",
      "description": "You recieved N10,000 to @Garri2003",
      "amount": "10,000",
      "time": "4:30am"
    },

  ];

  final List<Map<String, dynamic>> _settingsList = [
    {
      "title": "Profile"
    },
    {
      "title": "Appearance"
    },
    {
      "title": "Bank"
    },
    {
      "title": "Logout"
    },
  ];

    // Instant Variables
  final List<Widget> _colors = [
    RotatedBox(
      quarterTurns: 1,
      child: Container(
        height: 200,
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "images/splashLogo.png",
              height: 30,
              width: 30,
            ),
          ],
        ),
      ),
    ),
    RotatedBox(
      quarterTurns: 1,
      child: Container(
        height: 200,
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xff454ADE),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "images/splashLogo.png",
              height: 30,
              width: 30,
            ),
          ],
        ),
      ),
    ),
    RotatedBox(
      quarterTurns: 1,
      child: Container(
        height: 200,
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xff89FC00),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "images/splashLogo.png",
              height: 30,
              width: 30,
            ),
          ],
        ),
      ),
    ),
    RotatedBox(
      quarterTurns: 1,
      child: Container(
        height: 200,
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffFF4D00),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "images/splashLogo.png",
              height: 50,
              width: 50,
            ),
          ],
        ),
      ),
    )
  ];
  
  int _selectedColor = 0;

  // GETTERS
  String get defaultValue => _defaultValue;
  String get button1 => _button1;
  String get button2 => _button2;
  String get button3 => _button3;
  String get button4 => _button4;
  String get button5 => _button5;
  String get button6 => _button6;
  String get button7 => _button7;
  String get button8 => _button8;
  String get button9 => _button9;
  String get button0 => _button0;
  String get buttonDot => _buttonDot;
  List<Widget> get colors => _colors;
  int get selectedColor => _selectedColor;
  List<Widget> get screens => _screens;
  int get selectedIndex => _selectedIndex;
  bool get hideBalance => _hideBalance;
  bool get onSendRoute => _onSendRoute;
  List<Map<String, dynamic>> get sent => _sent;
  List<Map<String, dynamic>> get recieved => _recieved;
  List<Map<String, dynamic>> get settingsList => _settingsList;


  // SETTERS
  updateSelectedIndexItem(value) {
    _selectedIndex = value;
    update();
  }
  updateOnSendRoute(value) {
    _onSendRoute = value;
    update();
  }
  toggleHideBalance() {
    _hideBalance = !_hideBalance;
    update();
  }
  updateSelectedColorIndex(value) {
    _selectedColor = value;
    update();
  }
  updateDefaultValue(value) {
    _defaultValue = _defaultValue + value;
    update();
  }
  updateButtonOne(value) {
    _button1 = value;
    update();
  }
  updateButtonTwo(value) {
    _button2 = value;
    update();
  }  
  updateButtonThree(value) {
    _button3 = value;
    update();
  }
  updateButtonFour(value) {
    _button4 = value;
    update();
  }  
  updateButtonFive(value) {
    _button5 = value;
    update();
  }  
  updateButtonSix(value) {
    _button6 = value;
    update();
  }  
  updateButtonSeven(value) {
    _button7 = value;
    update();
  }  
  updateButtonEight(value) {
    _button8 = value;
    update();
  }  
  updateButtonNine(value) {
    _button9 = value;
    update();
  }  
  updateButtonDot(value) {
    _buttonDot = value;
    update();
  }  
  clearField() {
    _defaultValue = _defaultValue.substring(0, _defaultValue.length - 1);
    update();
  }
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
  updateImageUrl(value) {
    _imageUrl = value;
    update();
  }
  updateImage(value) {
    _selectedImage = value;
    update();
  }

  // GET IMAGE
  Future<void> getImage(ImageSource imageSource) async {
    try {
      var _pickedImage = await _imagePicker.pickImage(
        source: imageSource,
      );
      if (_pickedImage != null) {
        updateImage(File(_pickedImage.path));
        final response = await cloudinary.uploadResource(
          CloudinaryUploadResource(
            filePath: selectedImage!.path,
            fileBytes: selectedImage!.readAsBytesSync(),
            resourceType: CloudinaryResourceType.image,
          )
        );
        if(response.isSuccessful) {
          print('Get your image from with ${response.secureUrl}'); 
          updateImageUrl(response.secureUrl); 
        }

        if(imageUrl != ""){
          addImage();
        }else{
          null;
        }

      } else {
        Fluttertoast.showToast(
          msg: "No image selected",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 15.0
        );
      }
    } on PlatformException catch (e) {
      print(e);
    }

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

      _user = User.fromMap(responseData["data"]);

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

  //  ADD IMAGE SERVICE
  Future<void> addImage() async{
    updateIsLoading(true);

    Map<String, dynamic> details = {
      "image": imageUrl,
    };

    var response = await ProfileApiServcies.addImageService(details);
    var responseData = response!.data;
    print(responseData);

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      
      Fluttertoast.showToast(
        msg: "Uploaded!!!",
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
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );

    }
    update();
  }


}