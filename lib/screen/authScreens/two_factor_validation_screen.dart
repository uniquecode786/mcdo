import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routers/routers.dart';
import '../../wigets/addText.dart';
import '../../wigets/common_button.dart';


class TwoFactorValidationScreen extends StatefulWidget {
  const TwoFactorValidationScreen({super.key});
  static String route = '/TwoFactorValidationScreen';
  @override
  State<TwoFactorValidationScreen> createState() => _TwoFactorValidationScreenState();
}

class _TwoFactorValidationScreenState extends State<TwoFactorValidationScreen> {
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
                    addHeight(40),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: GestureDetector(
                        onTap: (){
                          Get.back();
                        },
                        child: const Icon(Icons.cancel,color: Colors.black,
                          size: 20,),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        addHeight(35),
                        Image.asset('assets/icons/logo.png',
                          height: 40,
                          width: 80,
                        ),
                        addHeight(30),
                        const FittedBox(
                          child: AddText(text: 'Create your account',
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 34,
                            height: 1.2,
                          ),
                        ),
                        addHeight(46),
                        const AddText(
                          text: 'Please fill in your login details.',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        addHeight(24),
                        addHeight(9),
                        const AddText(
                          text: 'Password must be min 8 characters',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6B6B6B),
                        ),
                        addHeight(11),
                        const AddText(
                          text: 'Include upper and lower case characters',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6B6B6B),
                        ),
                        addHeight(11),
                        const AddText(
                          text: 'Include one number',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6B6B6B),
                        ),

                        addHeight(37),
                      ],
                    ).paddingSymmetric(horizontal: 28),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/icons/star.png',
                          height: 20,
                          width: 10,
                        ),
                        addWidth(5),
                        const AddText(
                          text: 'required information',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6B6B6B),
                        )
                      ],
                    ).paddingSymmetric(horizontal: 16),
                  ],
                )
            ),
            CustomButton(
              radius: 0,
              title: 'submit'.tr,
              onPressed: () {
                Get.toNamed(TwoFactorValidationScreen.route);
              },
            ),
            addHeight(40),
          ],
        ),
      ),
    );
  }
}
