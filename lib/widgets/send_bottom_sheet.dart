import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flex/controller/app_state_controller.dart';
import 'package:flex/routes/app_route_names.dart';

class SendBottomSheet{
  static showSendBottomSheet() {
    Get.bottomSheet(
      GetBuilder<AppStateController>(
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(10),
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
                  const SizedBox(height: 30,),
                  ListTile(
                    onTap: (() {
                      Get.toNamed(bankTranserScreen);
                    }),
                    leading: const Icon(
                      Iconsax.send_1,
                      size: 25,
                      color: Colors.black,
                    ),
                    title: const Text(
                      "Bank Transfer"
                    ),
                  ),
                  ListTile(
                    onTap: (() {
                      Get.toNamed(usernameTransferScreen);
                    }),
                    leading: const Icon(
                      Icons.contactless_outlined,
                      size: 25,
                      color: Colors.black,
                    ),
                    title: const Text(
                      "Username Transfers"
                    ),
                  ),
                  ListTile(
                    onTap: (() {
                      Get.toNamed(sendContactlesslyScreen);
                    }),
                    leading: const Icon(
                      Icons.contactless_outlined,
                      size: 25,
                      color: Colors.black,
                    ),
                    title: const Text(
                      "Contactless Payments"
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