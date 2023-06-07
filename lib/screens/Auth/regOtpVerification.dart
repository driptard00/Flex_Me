import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flex/controller/auth_state_controller.dart';
import 'package:flex/routes/app_route_names.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class RegOtpVerificationScreen extends StatelessWidget {
  RegOtpVerificationScreen({super.key});

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
          body: Stack(
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
                            "OTP Verification",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 46,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(height: 30),

                          PinCodeTextField(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            appContext: context,
                            length: 4,
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(10),
                              activeFillColor: Colors.white,
                              inactiveFillColor: Colors.white,
                              inactiveColor: Colors.black,
                              fieldHeight: 45,
                              fieldWidth: 50,
                              selectedColor: Colors.black,
                              activeColor: Colors.black
                            ),
                            validator: (value) {
                              if(value == "") {
                                return "Please fill out field";
                              } else{
                                return null;
                              }
                            },
                            onChanged: (value) {
                              controller.updateOtp(value);
                            },
                          ),
                          const SizedBox(
                            height: 200
                          ),
                          SizedBox(
                            height: 75,
                            width: Get.width,
                            child: ElevatedButton(
                              onPressed: (){
                                (_formKey.currentState!.validate())?
                                controller.verifyRegistrationOtp():
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
                                  "Verify",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                )
                              )
                            ),
                          ),
                          const SizedBox(
                            height: 30
                          )
                        ],
                      ),
                    ),
                  )
                ),
              ),

              Positioned(
                right: 80,
                bottom: 700,
                child: Image.asset("images/paperAirUpRight.png")
              ),

              // Positioned(
              //   bottom: 40,
              //   right: 290,
              //   child: Image.asset("images/paperAirUpRight.png")
              // ),
            ],
          ),
        );
      }
    );
  }
}