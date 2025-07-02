import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdo/routers/routers.dart';
import '../../wigets/addText.dart';
import '../../wigets/common_button.dart';
import '../authScreens/signIn_option_screen.dart';


class ArtboardScreen3 extends StatefulWidget {
  const ArtboardScreen3({super.key});
  static String route = '/ArtboardScreen3';
  @override
  State<ArtboardScreen3> createState() => _ArtboardScreen3State();
}

class _ArtboardScreen3State extends State<ArtboardScreen3> {
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
                  addHeight(34),
                  Center(
                    child: Image.asset('assets/icons/notification.png',
                      height: 158,
                      width: 125,
                    ),
                  ),
                  addHeight(70),
                  AddText(
                    text: 'Never miss a\ngreat deal!'.tr,
                    fontWeight: FontWeight.w700,
                    fontSize: 34,
                  ),
                  addHeight(14),
                  AddText(
                    text: 'We would like to send you a notification every now and tehn to let you know when new offers are available'.tr,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ],
              ).paddingSymmetric(horizontal: 16),
            ),
            Center(
              child: AddText(
                text: '2/2'.tr,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          addHeight(28),
            CustomButton(
              radius: 0,
              title: 'continue'.tr,
              onPressed: () {
                Get.toNamed(SignInOptionScreen.route);
              },
            ),
            addHeight(40)
          ],
        )
      ),
    );
  }
}
