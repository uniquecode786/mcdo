import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdo/routers/routers.dart';
import 'package:mcdo/screen/authScreens/terms_conditions_screen.dart';
import '../../wigets/addText.dart';
import '../../wigets/common_button.dart';
import '../artboardScreen/artBoard_screen3.dart';


class SignInOptionScreen extends StatefulWidget {
  const SignInOptionScreen({super.key});
  static String route = '/SignInOptionScreen';
  @override
  State<SignInOptionScreen> createState() => _SignInOptionScreenState();
}

class _SignInOptionScreenState extends State<SignInOptionScreen> {
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
                    child: Image.asset('assets/icons/logo.png',
                      height: 60,
                      width: 250,
                    ),
                  ),
                  addHeight(70),
                  AddText(
                    text: 'Good things ahead'.tr,
                    fontWeight: FontWeight.w700,
                    fontSize: 31,
                    height: 1.1,
                  ),
                  addHeight(18),
                  AddText(
                    text: 'Become a member to order and pay in the app, receive tasty deals and collect points on your purchases.'.tr,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    height: 1.3,
                    color: Colors.black,
                  ),
                ],
              ).paddingSymmetric(horizontal: 18),
            ),
            Row(
              children: [
                 Expanded(
                   child: GestureDetector(
                     behavior: HitTestBehavior.translucent,
                     onTap: (){
                       Get.toNamed(TermsConditionsScreen.route);
                     },
                     child: Container(
                       height: 75,
                       decoration: BoxDecoration(
                         color: Colors.transparent,
                         border: Border.all(color: const Color(0xFFD3D3D3))
                       ),
                       child:  Center(
                         child: AddText(text: 'Log in'.tr,
                         color: Colors.black,
                           fontSize: 17,
                           fontWeight: FontWeight.w400,
                         ),
                       ),
                     ),
                   ),
                 ),
                  Expanded(child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: (){
                      Get.toNamed(TermsConditionsScreen.route);
                    },
                    child: Container(
                     height: 75,
                     color: const Color(0xFFFEBB0A),
                     child:  Center(
                       child: AddText(text: 'Sign up'.tr,
                         color: Colors.black,
                         fontSize: 17,
                         fontWeight: FontWeight.w400,
                       ),
                     )),
                  )
                  )
              ],
            ),
            addHeight(40)
          ],
        ),
      )
    );
  }
}
