import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/app_state_controller.dart';

class RecievedView extends StatelessWidget {
  RecievedView({Key? key}) : super(key: key);

  final AppStateController _appStateController = Get.find<AppStateController>();


  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppStateController>(
        builder: (controller) {
          return Scaffold(
            body: Container(
                color: Colors.white,
                child: ListView.separated(
                    itemBuilder: (context, int){
                      return Container(
                        height: 100,
                        width: Get.width,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 7,
                                child: Row(
                                  children: [
                                    const Expanded(
                                      flex: 2,
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundImage: AssetImage("images/profileAvatar.webp")
                                      ),
                                    ),
                                    const SizedBox(width: 10,),
                                    Expanded(
                                      flex: 8,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "${controller.recieved[int]["description"]}",
                                            maxLines: 2,
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontFamily: "PoppinsMedium"
                                            ),
                                          ),
                                          const SizedBox(height: 10,),
                                          Text(
                                            "${controller.recieved[int]["time"]}",
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontFamily: "PoppinsMedium"
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                            ),
                            Expanded(
                                flex: 3,
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "+N${(controller.hideBalance) ? ("****") : (controller.recieved[int]["amount"])}",
                                    style: const TextStyle(
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontFamily: "PoppinsMedium"
                                    ),
                                  ),
                                )
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index){
                      return const Divider(
                        color: Colors.grey,
                      );
                    },
                    itemCount: controller.recieved.length
                )
            ),
          );
        }
    );
  }
}