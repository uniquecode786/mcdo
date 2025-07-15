import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdo/screen/authScreens/personal_details_screen.dart';
import 'package:mcdo/screen/authScreens/two_factor_validation_screen.dart';

import '../../routers/routers.dart';
import '../../wigets/addText.dart';
import '../../wigets/common_button.dart';


class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});
  static String route = '/CreateAccountScreen';
  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var obscureText1 = true;
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
                child: SingleChildScrollView(
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
                            child: Image.asset('assets/icons/arrow_circle.png',
                              height: 40,
                              width: 50,
                            )
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
                              fontSize: 31,
                              height: 1.2,
                            ),
                          ),
                          addHeight(46),
                          const AddText(
                            text: 'Please fill in your login details.',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            height: 1.4,
                            color: Colors.black,
                          ),
                          addHeight(24),
                          ...fieldWithName(
                              title: 'Email',
                              hintText: 'Enter email',
                              controller: emailController),
                          ...fieldWithName(
                            title: 'Password',
                            hintText: 'Enter password',
                            controller: passwordController,
                              obSecure: obscureText1,
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    obscureText1 = !obscureText1;
                                  });
                                },
                                child:
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    obscureText1
                                        ?  Image.asset('assets/icons/hide.png',height: 16,width: 16,) :
                                    Image.asset('assets/icons/eye.png',height: 16,width: 16),
                                  ],
                                ),
                              )
                          ),
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
                      ).paddingSymmetric(horizontal: 30),
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
                            text: 'Required information',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6B6B6B),
                          )
                        ],
                      ).paddingSymmetric(horizontal: 16),
                    ],
                  ),
                )
            ),
            Visibility(
              visible: MediaQuery.of(context).viewInsets.bottom == 0,
              child: CustomButton(
                radius: 0,
                title: 'create account'.tr,
                onPressed: () {
                  Get.toNamed(TwoFactorValidationScreen.route);
                },
              ),
            ),
            addHeight(40),
          ],
        ),
      ),
    );
  }
}
