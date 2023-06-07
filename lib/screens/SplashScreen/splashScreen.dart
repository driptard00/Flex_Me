import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flex/routes/app_route_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override
  // ignore: must_call_super
  void initState() {
    // ignore: avoid_print
    Future.delayed(
        const Duration(seconds: 3),
            () {
          Get.toNamed(introScreen);
        }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Colors.black,
        child: Center(
          child: Image.asset("images/splashLogo.png"),
        ),
      )
    );
  }
}
