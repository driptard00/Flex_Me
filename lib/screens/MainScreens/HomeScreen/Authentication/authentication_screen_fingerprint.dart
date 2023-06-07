import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flex/controller/app_state_controller.dart';
import 'package:flex/routes/app_route_names.dart';


class AuthFingerprintScreen extends StatelessWidget {
  const AuthFingerprintScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: (){
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            ),
          ),
        ),
        body: GetBuilder<AppStateController>(
          builder: (controller) {
            return Container(
              height: Get.height,
              width: Get.width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: const Color(0xffF3F3F3),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Fingerprint not detected",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontFamily: "PoppinsMedium"
                      ),
                    ),
                    const SizedBox(height: 30,),
                    const Icon(
                      Icons.fingerprint,
                      color: Colors.black,
                      size: 100,
                    ),
                    const SizedBox(height: 30,),
                    const Text(
                      "use your\nfingerprint to\ntransfer",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: "PoppinsMedium"
                      ),
                    ),
                    const SizedBox(height: 30,),
                    SizedBox(
                      height: 50,
                      width: 130,
                      child: ElevatedButton(
                        onPressed: (){
                          Get.toNamed(authPinScreen);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffE7E2E2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)
                          ),
                          elevation: 0
                        ),
                        child: const Text(
                          "Use pin",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        )
    );
  }
}
