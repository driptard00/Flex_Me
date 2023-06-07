import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flex/routes/app_route_names.dart';
import 'package:flex/routes/app_routes.dart';

import 'firebase_options.dart';

void main(List<String> args) async {

  WidgetsFlutterBinding.ensureInitialized();

  /// import 'firebase_options.dart';

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {

    String initialRoute = splashScreen;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins"
      ),
      initialRoute: initialRoute,
      getPages: getPages,

    );
  }

}