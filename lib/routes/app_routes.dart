import 'package:flex/screens/getDetailsScreen.dart';
import 'package:get/get.dart';
import 'package:flex/routes/app_route_names.dart';
import 'package:flex/screens/Auth/signInScreen.dart';
import 'package:flex/screens/Auth/signUpScreen.dart';
import 'package:flex/screens/CardsScreens/cardColorScreen.dart';
import 'package:flex/screens/CardsScreens/createCardScreen.dart';
import 'package:flex/screens/CardsScreens/editCardColor.dart';
import 'package:flex/screens/CardsScreens/mangeCardScreen.dart';
import 'package:flex/screens/MainScreens/HomeScreen/Send/searchPeople.dart';
import 'package:flex/screens/MainScreens/HomeScreen/Send/sendContactlessly.dart';
import 'package:flex/screens/MainScreens/HomeScreen/Send/sendManually.dart';
import 'package:flex/screens/MainScreens/Profile%20Screen/profileScreen.dart';
import 'package:flex/screens/CardsScreens/virtualCardScreen.dart';
import 'package:flex/screens/introScreen.dart';

import '../screens/Auth/createPinScreen.dart';
import '../screens/Auth/forgotPasswordOtpScreen.dart';
import '../screens/Auth/forgotPasswordScreen.dart';
import '../screens/Auth/regOtpVerification.dart';
import '../screens/Auth/resetPasswordScreen.dart';
import '../screens/CardsScreens/cardInfoScreen.dart';
import '../screens/CardsScreens/cardsIntroScreen.dart';
import '../screens/MainScreens/HomeScreen/Authentication/authentication_screen_fingerprint.dart';
import '../screens/MainScreens/HomeScreen/Authentication/authentication_screen_pin.dart';
import '../screens/MainScreens/HomeScreen/Connection/connect_to_recieve.dart';
import '../screens/MainScreens/HomeScreen/Connection/connect_to_send.dart';
import '../screens/MainScreens/HomeScreen/money_input_screen.dart';
import '../screens/MainScreens/Settings/settingsScreen.dart';
import '../screens/MainScreens/holder_screen.dart';
import '../screens/SplashScreen/splashScreen.dart';

// ============= APP ROUTES ==============

List<GetPage> getPages = [

  // ========== SPLASH SCREEN ROUTE ==========
  GetPage(
      name: splashScreen,
      page: ()=> SplashScreen()
  ),


  // ========== INTRO SCREEN ROUTE ==========
  GetPage(
    name: introScreen,
    page: ()=> IntroScreen()
  ),

  // ====== AUTH ROUTES ========
  GetPage(
    name: signUpScreen,
    page: ()=> SignUpScreen()
  ),  
  GetPage(
    name: loginScreen,
    page: ()=> SignInScreen()
  ),
  GetPage(
    name: regOtpVerificationScreen,
    page: ()=> RegOtpVerificationScreen()
  ),
  GetPage(
    name: createPinScreen,
    page: ()=> CreatePinScreen()
  ),
  GetPage(
    name: forgotPasswordOtpScreen,
    page: ()=> ForgotPasswordOtpVerificationScreen()
  ),
  GetPage(
    name: forgotPasswordScreen,
    page: ()=> ForgotPasswordScreen()
  ),
  GetPage(
    name: resetPasswordScreen,
    page: ()=> ResetPasswordScreen()
  ),

  // ======== CARDS ROUTE ========
  GetPage(
      name: cardIntroScreen,
      page: ()=> CardsIntroScreen()
  ),
  GetPage(
      name: createCardScreen,
      page: ()=> CreateCardScreen()
  ),
  GetPage(
      name: cardColorScreen,
      page: ()=> CardColorScreen()
  ),
  GetPage(
      name: cardInfoScreen,
      page: ()=> CardInfoScreen()
  ),
  GetPage(
      name: manageCardScreen,
      page: ()=> ManageCardScreen()
  ),
  GetPage(
      name: editCardColorScreen,
      page: ()=> EditCardColorScreen()
  ),

  // ========== MAIN SCREEN =========
  GetPage(
      name: holderScreen,
      page: ()=> HolderScreen()
  ),
  GetPage(
      name: getDetailScreen,
      page: ()=> GetDetailScreen()
  ),

  // Settings
  GetPage(
      name: settingsScreen,
      page: ()=> SettingsScreen()
  ),

  // Connection Screens
  GetPage(
      name: connectToSendScreen,
      page: ()=> ConnectToSendScreen()
  ),
  GetPage(
      name: connectToRecieveScreen,
      page: ()=> ConnectToRecieveScreen()
  ),

  // Money input screen
  GetPage(
      name: moneyInputScreen,
      page: ()=> MoneyInputScreen()
  ),

  // Authentication screen
  GetPage(
      name: authFingerprintScreen,
      page: ()=> AuthFingerprintScreen()
  ),
  GetPage(
      name: authPinScreen,
      page: ()=> AuthPinScreen()
  ),

  // Success screens
  GetPage(
      name: sentSuccessScreen,
      page: ()=> SettingsScreen()
  ),
  GetPage(
      name: recievedSuccessScreen,
      page: ()=> SettingsScreen(),
  ),

  // Wallet Screen
  GetPage(
      name: walletScreen,
      page: ()=> WalletScreen(),
  ),

  // Profile Screen
  GetPage(
      name: profileScreen,
      page: ()=> ProfileScreen(),
  ),

  // SEND 
  GetPage(
      name: sendManually,
      page: ()=> SendManuallyScreen(),
  ),
  GetPage(
      name: sendContactlessly,
      page: ()=> SendContactlessly(),
  ), 
  GetPage(
      name: searchPeople,
      page: ()=> SearchPeopleScreen(),
  ), 
  
];