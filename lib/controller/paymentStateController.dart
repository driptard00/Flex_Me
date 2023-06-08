import 'package:flex/services/payments_api_services.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class PaymentStateController extends GetxController {
  // instant variables
  Map<String, dynamic> _banks = {};
  String _selectedBank = "";
  bool _isLoading = false;
  String _bankCode = "";
  String _accountNumber = "";
  String _accountName = "";
  dynamic _amount = 0;
  TextEditingController _bankController = TextEditingController();
  // getters
  Map<String, dynamic> get banks => _banks;
  String get selectedBank => _selectedBank;
  bool get isLoading => _isLoading;
  String get bankCode => _bankCode;
  String get accountName => _accountName;
  TextEditingController get bankController => _bankController;

  // setters
  updateSelectedBank(value) {
    _selectedBank = value;
    _bankController.text = _selectedBank;
    Get.back();
    update();
  }
  updateListOfBanks(value) {
    _banks = value;
    update();
  }
  updateIsLoading(value) {
    _isLoading = value;
    update();
  }
  updateBankCode(value) {
    _bankCode = value;
    print(_bankCode);
    update();
  }
  updateAccountNumber(value) {
    _accountNumber = value;
    update();
  }
  updateAccountName(value) {
    _accountName = value;
    update();
  }
  updateAmount(value) {
    _amount = value;
    update();
  }


  //  GET BANKS SERVICE
  Future<void> getbanks() async{
    updateIsLoading(true);

    var response = await PaymentApiServices.getBankService();
    var responseData = response!.data;
    print(responseData);

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);

      updateListOfBanks(responseData["banks"]);

      Fluttertoast.showToast(
        msg: "Retrieved!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );

    } else {
      updateIsLoading(false);

    }
    update();
  }

  //  VERIFY ACCOUNT NUMBER SERVICE
  Future<void> verifyAccountNumber() async{
    updateIsLoading(true);

    Map<String, dynamic> details = {
      "account_number" : _accountNumber,
      "bank_code": _bankCode
    };

    var response = await PaymentApiServices.verifyAccountNumberService(details);
    var responseData = response!.data;
    print(responseData);

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);

      updateAccountName(responseData["account"]["account_name"]);

      Fluttertoast.showToast(
        msg: "Retrieved!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );

    } else {
      updateIsLoading(false);

    }
    update();
  }

  //  TRIGGER TRANSFER 
  Future<void> triggerTransfer() async{
    updateIsLoading(true);

    Map<String, dynamic> details = {
      "amount": _amount,
      "account_number" : _accountNumber,
      "bank_code": _bankCode,
      "account_name": _accountName
    };

    var response = await PaymentApiServices.triggerTransferService(details);
    var responseData = response!.data;
    print(responseData);

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);

      Fluttertoast.showToast(
        msg: "Transferred!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );

    } else {
      updateIsLoading(false);

      Fluttertoast.showToast(
        msg: "failed!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }
    update();
  }

}