import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdo/routers/routers.dart';
import '../../wigets/addText.dart';
import '../../wigets/common_button.dart';
import '../BottomNavBarScreens/bottom_navbar_screen.dart';
import 'create_account_screen.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  static String route = '/WelcomeScreen';
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/logo.png',
                        height: 100,
                        width: 200,
                      ),
                      addHeight(100),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: AddText(
                          text: 'welcome to the club!',
                          fontSize: 34,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      addHeight(20),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: AddText(
                          text: 'Congrats on signing up. Check out some products for tasty tastiness!',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ).paddingSymmetric(horizontal: 16)),
              CustomButton(
                radius: 0,
                title: 'continue'.tr,
                onPressed: () {
                  Get.offAllNamed(BottomNavbar.route);
                },
              ),
              addHeight(40),
            ],
          )),
    );
  }
}