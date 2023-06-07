import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flex/controller/auth_state_controller.dart';
import 'package:flex/routes/app_route_names.dart';

import '../../controller/app_state_controller.dart';

class EditCardColorScreen extends StatelessWidget {
  EditCardColorScreen({Key? key}) : super(key: key);

  final AppStateController _appStateController = Get.put(AppStateController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppStateController>(
      builder: (controller) {
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
            color: Colors.white,
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Choose your color",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "PoppinsSemiBold",
                      fontSize: 30
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      color: const Color(0xffE7E2E2),
                      borderRadius: BorderRadius.circular(200)
                    ),
                    child: Center(
                      child: controller.colors[controller.selectedColor]
                    )
                  ),
                  const SizedBox(height: 70,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          controller.updateSelectedColorIndex(0);
                        },
                        child: Container(
                          height: 15,
                          width: 50,
                          decoration: BoxDecoration(
                              border: (controller.selectedColor == 0) ?
                              (
                                  Border.all(
                                      color: Colors.blue,
                                      width: 2.0
                                  )
                              ) :
                              (
                                  null
                              ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      InkWell(
                        onTap: (){
                          controller.updateSelectedColorIndex(1);
                        },
                        child: Container(
                          height: 15,
                          width: 50,
                          decoration: BoxDecoration(
                              border: (controller.selectedColor == 1) ?
                              (
                                  Border.all(
                                      color: Colors.blue,
                                      width: 2.0
                                  )
                              ) :
                              (
                                  null
                              ),
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff454ADE)
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      InkWell(
                        onTap: (){
                          controller.updateSelectedColorIndex(2);
                        },
                        child: Container(
                          height: 15,
                          width: 50,
                          decoration: BoxDecoration(
                              border: (controller.selectedColor == 2) ?
                              (
                                  Border.all(
                                      color: Colors.blue,
                                      width: 2.0
                                  )
                              ) :
                              (
                                  null
                              ),
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff89FC00).withOpacity(0.7)
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      InkWell(
                        onTap: (){
                          controller.updateSelectedColorIndex(3);
                        },
                        child: Container(
                          height: 15,
                          width: 50,
                          decoration: BoxDecoration(
                            border: (controller.selectedColor == 3) ?
                            (
                            Border.all(
                              color: Colors.blue,
                              width: 2.0
                            )
                            ) :
                            (
                            null
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffFF4D00)
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 70,),
                  SizedBox(
                    height: 65,
                    width: 260,
                    child: ElevatedButton(
                      onPressed: (){
                        Get.back();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xDB89FC00).withOpacity(0.7),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)
                          ),
                          elevation: 0
                      ),
                      child: const Text(
                        "Done?",
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
          ),
        );
      }
    );
  }
}
