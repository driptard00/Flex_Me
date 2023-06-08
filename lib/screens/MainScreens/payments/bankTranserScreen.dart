import 'package:flex/controller/paymentStateController.dart';
import 'package:flex/widgets/banks.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BankTransferScreen extends StatelessWidget {
  BankTransferScreen({super.key});

  final PaymentStateController _paymentStateController = Get.put(PaymentStateController());

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _paymentStateController.getbanks();
    });

    return GetBuilder<PaymentStateController>(
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
                "Bank Transfer",
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
              child: Column(
                children: [
                  Expanded(
                    flex: 8,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 20,),
                          // ======== EMAIL FIELD ========
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Select bank",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                const SizedBox(height: 10,),      
                                TextFormField(
                                  controller: controller.bankController,
                                  onTap: () {
                                    FocusScope.of(context).requestFocus(FocusNode());
                                    BanksList.showBankList();
                                  },
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
                                  ),
                                  onChanged: ((value) {
                                    controller.updateSelectedBank(value);
                                  }),
                                )                           
                              ],
                            ),
                          ),
                          const SizedBox(height: 20,),

                          // ======== EMAIL FIELD ========
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Account Number",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                const SizedBox(height: 10,),      
                                TextFormField(
                                  buildCounter: (context, {currentLength = 0, isFocused = true, maxLength = 10}) {
                                    if (currentLength == maxLength) {
                                      controller.verifyAccountNumber();
                                    }
                                  },
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
                                  ),
                                  onChanged: ((value) {
                                    controller.updateAccountNumber(value);
                                  }),
                                )                           
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                (controller.isLoading)?
                                "Loading..."
                                :
                                (controller.accountName == ""? "": controller.accountName),
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20,),
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Amount",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                const SizedBox(height: 10,),      
                                TextFormField(
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
                                  ),
                                  onChanged: ((value) {
                                    controller.updateAmount(value);
                                  }),
                                )                           
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: SizedBox(
                        height: 75,
                        width: Get.width,
                        child: ElevatedButton(
                          onPressed: (){
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
                              "Next",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            )
                          )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}