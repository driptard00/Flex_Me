import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flex/controller/app_state_controller.dart';
import 'package:flex/routes/app_route_names.dart';
import 'package:flex/widgets/send_bottom_sheet.dart';

import 'TabViews/recieved_view.dart';
import 'TabViews/sent_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: GetBuilder<AppStateController>(
        builder: (controller) {
          return Scaffold(
            body: Container(
              height: Get.height,
              width: Get.width,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage("images/profileAvatar.webp")
                            ),
                            const SizedBox(width: 5,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Jerry Ezek",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: "PoppinsMedium"
                                  ),
                                ),
                                Text(
                                  "@Jerrym1",
                                  style: TextStyle(
                                      color: const Color(0xff454ADE).withOpacity(0.8),
                                      fontSize: 15,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40,
                          width: 80,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                              ),
                              side: const BorderSide(
                                color: Colors.grey
                              )
                            ),
                            onPressed: (){
                              Get.toNamed(profileScreen);
                            },
                            child: const Text(
                              "Edit",
                              style: TextStyle(
                                color: Colors.black
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                            decoration: BoxDecoration(
                              color: (controller.selectedColor == 0)
                              ? Colors.black
                              : (controller.selectedColor == 1)
                              ? const Color(0xff454ADE)
                              : (controller.selectedColor == 2)
                              ? const Color(0xff89FC00)
                              : (controller.selectedColor == 3)
                              ? const Color(0xffFF4D00)
                              : null,
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Text(
                              "N${(controller.hideBalance) ? ("****") : ("1000.95")}",
                              style: TextStyle(
                                color: (controller.selectedColor == 2)?
                                  (
                                    Colors.black
                                  ):
                                  (
                                  Colors.white
                                  ),
                                fontSize: 15,
                                fontFamily: "PoppinsSemiBold"
                              ),
                            )
                          )
                        ),
                        IconButton(
                          onPressed: (){
                            controller.toggleHideBalance();
                          },
                          icon: Icon(
                            (controller.hideBalance) ?
                            (
                            Iconsax.eye_slash
                            ) :
                            (
                            Iconsax.eye
                            ),
                            color: Colors.grey
                          )
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "${(controller.hideBalance) ? ("**") : ("8")} swipps sent",
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: "PoppinsMedium"
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Text(
                          "${(controller.hideBalance) ? ("**") : ("14")} swipps recieved",
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: "PoppinsMedium"
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 110,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                side: const BorderSide(
                                    color: Colors.grey
                                )
                            ),
                            onPressed: (){
                              SendBottomSheet.showSendBottomSheet();
                            },
                            child: const Text(
                              "Send",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: "PoppinsSemiBold"
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 110,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              backgroundColor: const Color(0xff454ADE)
                            ),
                            onPressed: (){},
                            child: const Text(
                              "Fund",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: "PoppinsSemiBold"
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 110,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              backgroundColor: const Color(0xff89FC00).withOpacity(0.7)
                            ),
                            onPressed: (){
                              // Get.toNamed(connectToRecieveScreen);
                            },
                            child: const Text(
                              "Withdraw",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "PoppinsSemiBold",
                                fontSize: 12
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.grey
                        ),
                        color: Colors.white
                      ),
                      child: TabBar(
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color(0xff454ADE)
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        unselectedLabelColor: Colors.black,
                        tabs: const [
                          Tab(
                            text: "Sent",
                          ),
                          Tab(
                            text: "Recieved",
                          ),
                        ]
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          "View all",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "PoppinsSemiBold",
                            fontSize: 12
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Container(
                        child: TabBarView(
                          children: [
                            SentView(),
                            RecievedView()
                          ]
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
