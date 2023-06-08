import 'package:flex/controller/paymentStateController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BanksList {
  static showBankList() {
    Get.bottomSheet(
      GetBuilder<PaymentStateController>(
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 600,
              width: Get.width,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: ListView.separated(
                itemCount: controller.banks.values.toList().length,
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Colors.black,
                  );
                },
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      controller.updateSelectedBank(controller.banks.values.toList()[index]);
                      controller.updateBankCode(controller.banks.keys.toList()[index]);
                    },
                    title: Text(
                      controller.banks.values.toList()[index]
                    ),
                  );
                },
              ),
            ),
          );
        }
      ),
      isScrollControlled: true
    );
  }
}