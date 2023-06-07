import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flex/routes/app_route_names.dart';

class SendManuallyScreen extends StatelessWidget {
  const SendManuallyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),  
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Send Manually",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: "PoppinsMedium"
          ),
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              const Text(
                "Send money to your closest friends",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: "PoppinsMedium"
                ),
              ),
              const SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Get.toNamed(searchPeople);
                },
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
                  child: Row(
                    children: const[
                      Icon(
                        Icons.search,
                        color: Color(0xff181818),
                      ),
                      Text(
                        "Name,",
                        style: TextStyle(
                          color: Color(0xff181818),
                          fontSize: 18,
                          fontFamily: "PoppinsMedium"
                        ),
                      ),
                      Text(
                        "@username,",
                        style: TextStyle(
                          color: Color(0xff181818),
                          fontSize: 18,
                          fontFamily: "PoppinsMedium"
                        ),
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                          color: Color(0xff181818),
                          fontSize: 18,
                          fontFamily: "PoppinsMedium"
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: (){

                    }, 
                    child: const Text(
                      "View Contacts",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "PoppinsMedium"
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 150
                    
                  ), 
                  itemBuilder: ((context, int) {
                    return Column(
                      children: [
                        const CircleAvatar(
                          radius: 35,
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          "@gangRiver2003",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xff454ADE).withOpacity(0.8),
                            fontSize: 15,
                            // fontFamily: "PoppinsMedium"
                          ),
                        ),
                      ],
                    );
                  })
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}