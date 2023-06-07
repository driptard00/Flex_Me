import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flex/routes/app_route_names.dart';

import '../../../controller/app_state_controller.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AppStateController>(
        builder: (controller) {
          return Container(
            height: Get.height,
            width: Get.width,
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Settings",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: "PoppinsSemiBold"
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  _settingsList("Profile", (){Get.toNamed(profileScreen);}),
                  const Divider(
                    color: Colors.black,
                  ),
                  _settingsList("Appearance", (){"Get.toNamed()";}),
                  const Divider(
                    color: Colors.black,
                  ),
                  _settingsList("Bank", (){"Get.toNamed()";}),
                  const Divider(
                    color: Colors.black,
                  ),
                  _settingsList("Logout", (){Get.toNamed(loginScreen);}),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
  InkWell _settingsList (String _settingsTitle, Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 100,
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _settingsTitle,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: "PoppinsMedium"
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
