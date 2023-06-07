import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flex/controller/app_state_controller.dart';
import 'package:flex/routes/app_route_names.dart';

class HolderScreen extends StatelessWidget {
  HolderScreen({Key? key}) : super(key: key);

  final AppStateController _appStateController = Get.put(AppStateController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppStateController>(
      builder: (controller) {
        return Scaffold(

          body: controller.screens[controller.selectedIndex],

          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            child: Container(
              height: 70,
              width: Get.width,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: (){
                      controller.updateSelectedIndexItem(0);
                    },
                    child: Icon(
                      Iconsax.home,
                      size: 25,
                      color: (controller.selectedIndex == 0) ?
                      (
                        const Color(0xff89FC00).withOpacity(0.7)
                      ) :
                      (
                        Colors.black
                      ),
                    )
                  ),
                  TextButton(
                    onPressed: (){
                      controller.updateSelectedIndexItem(1);
                    },
                    child: Icon(
                      Iconsax.card,
                      size: 25,
                      color: (controller.selectedIndex == 1) ?
                      (
                          const Color(0xff89FC00).withOpacity(0.7)
                      ) :
                      (
                          Colors.black
                      ),
                    )
                  ),
                  TextButton(
                    onPressed: (){
                      controller.updateSelectedIndexItem(2);
                    },
                    child: Icon(
                      Iconsax.activity,
                      size: 25,
                      color: (controller.selectedIndex == 2) ?
                      (
                          const Color(0xff89FC00).withOpacity(0.7)
                      ) :
                      (
                          Colors.black
                      ),
                    )
                  ),
                  TextButton(
                      onPressed: (){
                        controller.updateSelectedIndexItem(3);
                      },
                      child: Icon(
                        Iconsax.setting_2,
                        size: 25,
                        color: (controller.selectedIndex == 3) ?
                        (
                            const Color(0xff89FC00).withOpacity(0.7)
                        ) :
                        (
                            Colors.black
                        ),
                      )
                  ),
                ],
              ),
            )
          ),
        );
      }
    );
  }
}
