import 'package:awesome_card/awesome_card.dart';
import 'package:awesome_card/credit_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flex/routes/app_route_names.dart';

class CardsIntroScreen extends StatelessWidget {
  const CardsIntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Colors.white,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 12,
                child: Container(
                  // color: Colors.green,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(width: 30,),
                      // Center(
                      //   child: RotatedBox(
                      //     quarterTurns: 1,
                      //     child: Container(
                      //       height: 300,
                      //       width: Get.width,
                      //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      //       decoration: BoxDecoration(
                      //         color: Colors.black,
                      //         borderRadius: BorderRadius.circular(20)
                      //       ),
                      //       child: Column(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         children: [
                      //           Image.asset(
                      //             "images/splashLogo.png",
                      //             height: 50,
                      //             width: 50,
                      //           ),
                      //           Column(
                      //             crossAxisAlignment: CrossAxisAlignment.start,
                      //             children: const [
                      //               Text(
                      //                 "XXXX XXX 6347",
                      //                 style: TextStyle(
                      //                   color: Colors.white,
                      //                   fontFamily: "IBMPLEXMONO MEDIUM",
                      //                   fontSize: 18
                      //                 ),
                      //               ),
                      //               Text(
                      //                 "Akintade Oluwaseun Timothy",
                      //                 style: TextStyle(
                      //                     color: Colors.white,
                      //                     fontFamily: "IBMPLEXMONO LIGHT",
                      //                     fontSize: 15
                      //                 ),
                      //               ),
                      //             ],
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Center(
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: CreditCard(
                            height: 250,
                            cardNumber: "5450 7879 4864 7854",
                            cardExpiry: "10/25",
                            cardHolderName: "Akintade Oluwaseun ",
                            cvv: "456",
                            cardType: CardType.masterCard, // Optional if you want to override Card Type
                            showBackSide: false,
                            frontBackground: CardBackgrounds.black,
                            backBackground: CardBackgrounds.white,
                            showShadow: false,
                            textExpDate: 'Exp. Date',
                            textName: 'Name',
                            textExpiry: 'MM/YY'
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Center(
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: CreditCard(
                            height: 250,
                            cardNumber: "5450 7879 4864 7854",
                            cardExpiry: "10/25",
                            cardHolderName: "Akintade Oluwaseun ",
                            cvv: "456",
                            cardType: CardType.masterCard, // Optional if you want to override Card Type
                            showBackSide: false,
                            frontBackground: CardBackgrounds.custom(0xff89FC00),
                            backBackground: CardBackgrounds.white,
                            showShadow: false,
                            textExpDate: 'Exp. Date',
                            textName: 'Name',
                            textExpiry: 'MM/YY'
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Center(
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: CreditCard(
                            height: 250,
                            cardNumber: "5450 7879 4864 7854",
                            cardExpiry: "10/25",
                            cardHolderName: "Akintade Oluwaseun ",
                            cvv: "456",
                            cardType: CardType.masterCard, // Optional if you want to override Card Type
                            showBackSide: false,
                            frontBackground: CardBackgrounds.custom(0xffFF4D00),
                            backBackground: CardBackgrounds.white,
                            showShadow: false,
                            textExpDate: 'Exp. Date',
                            textName: 'Name',
                            textExpiry: 'MM/YY'
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Center(
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: CreditCard(
                            height: 250,
                            cardNumber: "5450 7879 4864 7854",
                            cardExpiry: "10/25",
                            cardHolderName: "Akintade Oluwaseun ",
                            cvv: "456",
                            cardType: CardType.masterCard, // Optional if you want to override Card Type
                            showBackSide: false,
                            frontBackground: CardBackgrounds.custom(0xff454ADE),
                            backBackground: CardBackgrounds.white,
                            showShadow: false,
                            textExpDate: 'Exp. Date',
                            textName: 'Name',
                            textExpiry: 'MM/YY'
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                    ],
                  ),
                )
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    // color: Colors.grey,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: const Text(
                      "Virtual Cards\nwith contactless\npayment",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "PoppinsSemiBold",
                        fontSize: 30
                      ),
                    ),
                  )
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    // color: Colors.blue,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Center(
                      child: SizedBox(
                        height: 75,
                        width: Get.width,
                        child: ElevatedButton(
                          onPressed: (){
                            Get.toNamed(createCardScreen);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28)
                              ),
                              elevation: 0
                          ),
                          child: const Text(
                            "Get Started",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
