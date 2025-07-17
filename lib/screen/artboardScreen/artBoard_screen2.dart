import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdo/routers/routers.dart';
import 'package:mcdo/screen/artboardScreen/artBoard_screen3.dart';
import '../../wigets/addText.dart';
import '../../wigets/common_button.dart';


class ArtboardScreen2 extends StatefulWidget {
  const ArtboardScreen2({super.key});
  static String route = '/ArtboardScreen2';
  @override
  State<ArtboardScreen2> createState() => _ArtboardScreen2State();
}

class _ArtboardScreen2State extends State<ArtboardScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    addHeight(70),
                    Center(
                      child: Image.asset('assets/icons/location.png',
                        height: 150,
                        width: 120,
                      ),
                    ),
                    addHeight(36),
                    AddText(
                      text: 'Location is key!'.tr,
                      fontWeight: FontWeight.w700,
                      fontSize: 26,
                    ),
                    addHeight(14),
                    AddText(
                      text: 'We need to access your device\'s location so that we can show you the nearest restaurants and the offers that are most relevant to you'.tr,
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      height: 1.6,
                      color: Colors.black,
                    ),
                  ],
                ).paddingSymmetric(horizontal: 18),
            ),
           Center(
             child: AddText(
                text: '1/2'.tr,
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),
           ),
           addHeight(22),
            CustomButton(
              radius: 0,
              title: 'continue'.tr,
              onPressed: () {
                Get.toNamed(ArtboardScreen3.route);
              },
            ),
            addHeight(40),
          ],
        )
      ),
    );
  }
}
