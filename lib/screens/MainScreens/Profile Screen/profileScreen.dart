import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flex/controller/app_state_controller.dart';
import 'package:flex/routes/app_route_names.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              centerTitle: true,
              title: const Text(
                "Profile",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: "PoppinsMedium"
                ),
              ),
            ),
          body: Container(
            height: Get.height,
            width: Get.width,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: Colors.white,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    Row(
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
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}