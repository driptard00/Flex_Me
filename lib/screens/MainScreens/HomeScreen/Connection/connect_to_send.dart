import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flex/routes/app_route_names.dart';

import '../../../../widgets/link_bottom_sheet.dart';

class ConnectToSendScreen extends StatelessWidget {
  const ConnectToSendScreen({Key? key}) : super(key: key);

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
        body: Container(
          height: Get.height,
          width: Get.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: const Color(0xffF3F3F3),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Connect",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontFamily: "PoppinsSemiBold"
                  ),
                ),
                const SizedBox(height: 80,),
                Image.asset("images/connection.png"),
                const SizedBox(height: 60,),
                const Text(
                  "Put phone together to send money",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: "PoppinsMedium"
                  ),
                ),
                const SizedBox(height: 100,),
                SizedBox(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 65,
                        width: 260,
                        child: ElevatedButton(
                          onPressed: (){
                            Get.toNamed(connectionScreen);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xDB89FC00).withOpacity(0.7),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)
                              ),
                              elevation: 0
                          ),
                          child: const Text(
                            "Send?",
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
                          Get.toNamed(connectToRecieveScreen);
                        },
                        child: const Text(
                          "Recieve money",
                          style: TextStyle(
                            color: Color(0xff454ADE),
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
