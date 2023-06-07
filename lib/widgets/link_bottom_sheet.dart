import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flex/controller/app_state_controller.dart';
import 'package:flex/routes/app_route_names.dart';

class LinkBottomSheet{
  static showLinkBottomSheet() {
    Get.bottomSheet(
      GetBuilder<AppStateController>(
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              height: 300,
              width: Get.width,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                children: [
                  Container(
                    height: 5,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                  const SizedBox(height: 50,),
                  const CircleAvatar(
                    radius: 30,
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    "@4thBen",
                    style: TextStyle(
                      color: const Color(0xff454ADE).withOpacity(0.8),
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 30,),
                  SizedBox(
                    height: 75,
                    width: Get.width,
                    child: ElevatedButton(
                      onPressed: (){
                        Get.toNamed(moneyInputScreen);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28)
                          ),
                          elevation: 0
                      ),
                      child: const Text(
                        "Link?",
                        style: TextStyle(
                          color: Colors.white,
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