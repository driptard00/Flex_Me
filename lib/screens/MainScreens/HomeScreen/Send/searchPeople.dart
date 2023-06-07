import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SearchPeopleScreen extends StatelessWidget {
  const SearchPeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: const Icon(
                              Icons.arrow_back_ios_rounded,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ),
                      Expanded(
                        flex: 9,
                        child: Container(
                        height: 60,
                        width: Get.width,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.grey
                          )
                        ),
                        child: Center(
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(borderSide: BorderSide.none),
                              contentPadding: EdgeInsets.zero,
                              hintText: "Name, @username",
                              hintStyle: TextStyle(
                              color: Color(0xff181818),
                              fontSize: 18,
                              fontFamily: "PoppinsMedium"
                            ),
                            ),
                          ),
                        )
                      ),
                      )
                    ],
                  ),
                )
              ),
              Expanded(
                flex: 18,
                child: Container(
                  color: Colors.blue,
                )
              ),
            ],
          )
        ),
      ),
    );
  }
}