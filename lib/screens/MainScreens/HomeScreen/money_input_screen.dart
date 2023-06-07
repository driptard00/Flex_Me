import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flex/routes/app_route_names.dart';

import '../../../controller/app_state_controller.dart';

class MoneyInputScreen extends StatelessWidget {
  MoneyInputScreen({Key? key}) : super(key: key);

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
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Total balance: N1000.95",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontFamily: "PoppinsMedium"
                              ),
                            ),
                            Text(
                              "N${controller.defaultValue}",
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 50,
                                fontFamily: "PoppinsSemiBold"
                              ),
                            ),
                          ],
                        ),
                      )
                    ),
                    Expanded(
                      flex: 10,
                      child: Container(
                        // color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: (){
                                    controller.updateDefaultValue("1");
                                  },
                                  child: const Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontFamily: "PoppinsSemiBold"
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){
                                    controller.updateDefaultValue("2");
                                  },
                                  child: const Text(
                                    "2",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontFamily: "PoppinsSemiBold"
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){
                                    controller.updateDefaultValue("3");
                                  },
                                  child: const Text(
                                    "3",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontFamily: "PoppinsSemiBold"
                                    ),
                                  ),
                                ),
                              ]
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: (){
                                    controller.updateDefaultValue("4");
                                  },
                                  child: const Text(
                                    "4",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontFamily: "PoppinsSemiBold"
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){
                                    controller.updateDefaultValue("5");
                                  },
                                  child: const Text(
                                    "5",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontFamily: "PoppinsSemiBold"
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){
                                    controller.updateDefaultValue("6");
                                  },
                                  child: const Text(
                                    "6",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontFamily: "PoppinsSemiBold"
                                    ),
                                  ),
                                ),
                              ]
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: (){
                                    controller.updateDefaultValue("7");
                                  },
                                  child: const Text(
                                    "7",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontFamily: "PoppinsSemiBold"
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){
                                    controller.updateDefaultValue("8");
                                  },
                                  child: const Text(
                                    "8",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontFamily: "PoppinsSemiBold"
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){
                                    controller.updateDefaultValue("9");
                                  },
                                  child: const Text(
                                    "9",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontFamily: "PoppinsSemiBold"
                                    ),
                                  ),
                                ),
                              ]
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: (){
                                    controller.updateDefaultValue(".");
                                  },
                                  child: const Text(
                                    ".",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontFamily: "PoppinsSemiBold"
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){
                                    controller.updateDefaultValue("0");
                                  },
                                  child: const Text(
                                    "0",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontFamily: "PoppinsSemiBold"
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){
                                    controller.clearField();
                                  },
                                  child: const Text(
                                    "<",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontFamily: "PoppinsSemiBold"
                                    ),
                                  ),
                                ),
                              ]
                            ),
                          ],
                        )
                      )
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Center(
                          child: SizedBox(
                            height: 65,
                            width: Get.width,
                            child: ElevatedButton(
                              onPressed: (){
                                controller.updateOnSendRoute(true);
                                Get.toNamed(authFingerprintScreen);
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(28)
                                  ),
                                  elevation: 0
                              ),
                              child: const Text(
                                "Send",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
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
