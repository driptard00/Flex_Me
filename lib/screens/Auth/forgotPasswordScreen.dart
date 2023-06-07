import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flex/routes/app_route_names.dart';
import 'package:iconsax/iconsax.dart';

import '../../controller/auth_state_controller.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen ({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthStateController _authStateController = Get.put(AuthStateController());

  @override
  Widget build(BuildContext context) {
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
      body: GetBuilder<AuthStateController>(
        builder: (controller) {
          return Stack(
            children: [
              Container(
                height: Get.height,
                width: Get.width,
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 46,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(height: 60,),
                          // ======== EMAIL FIELD ========
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Email",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                const SizedBox(height: 10,),      
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
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
                                    hintText: "Enter your Email here"
                                  ),
                                  onChanged: ((value) {
                                    controller.updateEmail(value);
                                  }),
                                )                           
                              ],
                            ),
                          ),
                
                          const SizedBox(height: 60,),
                          SizedBox(
                            height: 75,
                            width: Get.width,
                            child: ElevatedButton(
                              onPressed: (){
                                (_formKey.currentState!.validate())?
                                controller.forgotPassword():
                                AutovalidateMode.disabled;
                              }, 
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28)
                                ),
                                elevation: 0
                              ),
                              child: (controller.isLoading)?
                              (
                                const CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              ):
                              (
                                const Text(
                                  "Sent",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                )
                              )
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  )
                ),
              ),

              Positioned(
                right: 80,
                bottom: 700,
                child: Image.asset("images/paperAirUpLeft.png")
              ),

              Positioned(
                bottom: 40,
                right: 290,
                child: Image.asset("images/paperAirUpRight.png")
              ),
            ],
          );
        }
      ),
    );
  }
}