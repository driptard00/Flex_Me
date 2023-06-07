import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flex/controller/auth_state_controller.dart';
import 'package:flex/routes/app_route_names.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  final AuthStateController _authStateController = Get.put(AuthStateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AuthStateController>(
        builder: (controller) {
          return Container(
            height: Get.height,
            width: Get.width,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: Colors.white,
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CupertinoSwitch(
                        value: true,
                        onChanged: ((value) {
                        }),
                        activeColor: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          // color: Colors.amber,
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Transact without touch",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 53,
                                  fontFamily: "PoppinsSemiBold",
                                ),
                              ),
                              const SizedBox(height: 10,),
                              const SizedBox(
                                width: 268,
                                child: Text(
                                  "Send and recieve money with P2P near ranged sharing through your smartphones.",
                                  style: TextStyle(
                                    color: Color(0xff5E5D5D),
                                    fontSize: 18,

                                  ),
                                ),
                              ),
                              const SizedBox(height: 60,),
                              SizedBox(
                                height: 65,
                                width: 260,
                                child: ElevatedButton(
                                  onPressed: (){
                                    Get.toNamed(signUpScreen);
                                  }, 
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xDB89FC00).withOpacity(0.7),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40)
                                    ),
                                    elevation: 0
                                  ),
                                  child: const Text(
                                    "Jump in?",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              TextButton(
                                onPressed: (){
                                  Get.toNamed(loginScreen);
                                }, 
                                child: const Text(
                                  "Log in to Swipp",
                                  style: TextStyle(
                                    color: Color(0xff454ADE),
                                    fontSize: 15,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: 140,
                          child: Image.asset("images/paperAirUpLeft.png")
                        ),
                        Positioned(
                          right: 0,
                          bottom: 420,
                          child: Image.asset("images/paperAirUp.png")
                        ),
                        Positioned(
                          bottom: 40,
                          right: 270,
                          child: Image.asset("images/paperAirUpRight.png")
                        ),
                      ],
                    ),
                  )
                ],
              )
            ),
          );
        }
      ),
    );
  }
}