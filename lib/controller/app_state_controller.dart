import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flex/screens/CardsScreens/virtualCardScreen.dart';

import '../screens/MainScreens/HomeScreen/homeScreen.dart';
import '../screens/MainScreens/Settings/settingsScreen.dart';

class AppStateController extends GetxController{

  // Instant Variables
  final List<Widget> _screens = [
    HomeScreen(),
    WalletScreen(),
    HomeScreen(),
    SettingsScreen(),
  ];

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





}