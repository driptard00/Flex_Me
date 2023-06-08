import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/app_state_controller.dart';


class GetDetailScreen extends StatefulWidget {
  const GetDetailScreen({super.key});

  @override
  State<GetDetailScreen> createState() => _GetDetailScreenState();
}
  final AppStateController _appStateController = Get.put(AppStateController());

class _GetDetailScreenState extends State<GetDetailScreen> {

  @override
  void initState() {
    _appStateController.getProfile();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Colors.white,
        child: const Center(
          child: CircularProgressIndicator(
            color: Color(0xDB89FC00),
          ),
        ),
      ),
    );
  }
}