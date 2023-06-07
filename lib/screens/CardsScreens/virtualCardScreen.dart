import 'package:awesome_card/credit_card.dart';
import 'package:awesome_card/extra/card_type.dart';
import 'package:awesome_card/style/card_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flex/controller/app_state_controller.dart';
import 'package:flex/routes/app_route_names.dart';
import 'package:flex/widgets/send_bottom_sheet.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppStateController>(
      builder: (controller) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              "Virtual Card      ",
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
            color: Colors.white,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    CreditCard(
                      height: 200,
                      cardNumber: "5450 7879 4864 7854",
                      cardExpiry: "10/25",
                      cardHolderName: "Akintade Oluwaseun ",
                      cvv: "456",
                      cardType: CardType.masterCard, // Optional if you want to override Card Type
                      showBackSide: false,
                      frontBackground: (controller.selectedColor == 0)
                      ? CardBackgrounds.black
                      : (controller.selectedColor == 1)
                      ? CardBackgrounds.custom(0xff454ADE)
                      : (controller.selectedColor == 2)
                      ? CardBackgrounds.custom(0xff89FC00)
                      : (controller.selectedColor == 3)
                      ? CardBackgrounds.custom(0xffFF4D00)
                      : CardBackgrounds.black,
                      backBackground: CardBackgrounds.white,
                      showShadow: false,
                      textExpDate: 'Exp. Date',
                      textName: 'Name',
                      textExpiry: 'MM/YY'
                    ),    
                    const SizedBox(height: 30,),
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
                    const SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Material(
                        elevation: 3,
                        child: Container(
                          height: 80,
                          width: Get.width,
                          color: Colors.white,
                          child: Center(
                            child: ListTile(
                              onTap: (() {
                                Get.toNamed(manageCardScreen);
                              }),
                              leading: const Icon(
                                Iconsax.card_edit,
                                color: Colors.black,
                              ),
                              title: const Text(
                                "Manage Card",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "PoppinsSemiBold",
                                  fontSize: 16
                                ),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ),
                      ),
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