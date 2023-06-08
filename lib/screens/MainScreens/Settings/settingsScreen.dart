import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flex/routes/app_route_names.dart';
import 'package:image_picker/image_picker.dart';

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
              child: SingleChildScrollView(
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
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Stack(
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage: (controller.user.image != null)?
                                  NetworkImage(controller.user.image)
                                  :
                                  (controller.selectedImage != null)?
                                  FileImage(controller.selectedImage!)
                                  :
                                  const AssetImage("images/profileAvatar.webp") as ImageProvider,
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: InkWell(
                                    onTap: () {
                                      controller.getImage(ImageSource.gallery);
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: const Color(0xff89FC00)
                                      ),
                                      child: const Icon(
                                        Icons.edit,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                )
                              ],
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Expanded(
                            flex: 15,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.user.name!,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontFamily: "PoppinsMedium"
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                Text(
                                  "@${controller.user.username}",
                                  style: TextStyle(
                                      color: const Color(0xff454ADE).withOpacity(0.8),
                                      fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                                  
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    _settingsList("Personal Information", (){Get.toNamed(profileScreen);}),
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
