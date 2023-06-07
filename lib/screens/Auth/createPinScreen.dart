import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flex/routes/app_route_names.dart';

import '../../controller/auth_state_controller.dart';

class CreatePinScreen extends StatelessWidget {
  CreatePinScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthStateController _authStateController = Get.put(AuthStateController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthStateController>(
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
          ),
          body: Container(
            height: Get.height,
            width: Get.width,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Create Pin",
                        style: TextStyle(
                            fontSize: 34,
                            color: Colors.black,
                            fontFamily: "PoppinsSemiBold"
                        ),
                      ),
                      const SizedBox(height: 40,),

                      // NAME FIELD
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "PIN",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            const SizedBox(height: 10,),      
                            TextFormField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                hintText: "Enter 4 digit pin"
                              ),
                              onChanged: ((value) {
                                controller.updatePin(value);
                              }),
                            )                           
                          ],
                        ),
                      ),
                      const SizedBox(height: 200,),
                      SizedBox(
                        height: 65,
                        width: 260,
                        child: ElevatedButton(
                          onPressed: (){
                            controller.createPin();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xDB89FC00).withOpacity(0.7),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)
                            ),
                            elevation: 0
                          ),
                          child: const Text(
                            "Done?",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
