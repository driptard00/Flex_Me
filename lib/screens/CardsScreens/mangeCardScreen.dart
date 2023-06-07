import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flex/routes/app_route_names.dart';

class ManageCardScreen extends StatelessWidget {
  const ManageCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Manage Card",
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
        child: Column(
          children: [
            ListTile(
              onTap: (() {
                Get.toNamed(editCardColorScreen);
              }),
              leading: const Icon(
                Iconsax.card_edit,
                color: Colors.black,
              ),
              title: const Text(
                "Change card color",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: (() {
                // Get.toNamed(manageCardScreen);
              }),
              leading: const Icon(
                Iconsax.card_edit,
                color: Colors.black,
              ),
              title: const Text(
                "Change card info",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}