import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flex/routes/app_route_names.dart';

class CreateCardScreen extends StatelessWidget {
  const CreateCardScreen({Key? key}) : super(key: key);

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
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Create your\nvirtual card\nfor free.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 45,
                    fontFamily: "PoppinsSemiBold"
                  ),
                ),
                const SizedBox(height: 70,),
                SizedBox(
                  height: 65,
                  width: 260,
                  child: ElevatedButton(
                    onPressed: (){
                      Get.toNamed(cardColorScreen);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xDB89FC00).withOpacity(0.7),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)
                        ),
                        elevation: 0
                    ),
                    child: const Text(
                      "Get Card?",
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
          Positioned(
              right: 230,
              bottom: 680,
              child: Image.asset("images/paperAirUpRight.png")
          ),
          Positioned(
              right: 40,
              bottom: 350,
              child: Image.asset("images/paperAirUpLeft.png")
          ),
          Positioned(
              right: 290,
              bottom: 40,
              child: Image.asset("images/paperAirUpRight.png")
          ),
        ],
      ),
    );
  }
}
