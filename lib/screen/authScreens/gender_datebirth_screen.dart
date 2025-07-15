import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdo/screen/authScreens/personal_details_screen.dart';
import 'package:mcdo/screen/authScreens/two_factor_validation_screen.dart';
import 'package:mcdo/screen/authScreens/welcome_screen.dart';

import '../../routers/routers.dart';
import '../../wigets/addText.dart';
import '../../wigets/common_button.dart';


class GenderDateBirthScreen extends StatefulWidget {
  const GenderDateBirthScreen({super.key});
  static String route = '/GenderDateBirthScreen';
  @override
  State<GenderDateBirthScreen> createState() => _GenderDateBirthScreenState();
}

class _GenderDateBirthScreenState extends State<GenderDateBirthScreen> {
  TextEditingController genderController = TextEditingController();
  TextEditingController yearController = TextEditingController();
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
                        child:  GestureDetector(
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
                            child: AddText(text: 'Nice to meet you!',
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 31,
                              height: 1.2,
                            ),
                          ),
                          addHeight(54),
                          const AddText(
                            text: 'How can we tailor your experience?',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                          addHeight(4),
                          const AddText(
                            text: 'Share your personal data so we can prepare some personal deals just for you.',
                            fontSize: 12,
                            height: 1.3,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6B6B6B),
                          ),
                          addHeight(20),
                          ...fieldWithName(
                              title: 'Gender',
                              hintText: 'select',
                              controller: genderController,
                              suffixIcon: GestureDetector(
                                child: const Icon(Icons.keyboard_arrow_down_outlined),
                              )
                          ),
                          ...fieldWithName(
                              title: 'Date of birth',
                              hintText: 'yyyy-mm-dd',
                              controller: yearController,

                          ),
                          addHeight(20)
                        ],
                      ).paddingSymmetric(horizontal: 28),
                      const AddText(
                        text: 'yyyy-mm-dd',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6B6B6B),
                      ).paddingSymmetric(horizontal: 28),
                    ],
                  ),
                )
            ),
            Visibility(
              visible: MediaQuery.of(context).viewInsets.bottom == 0,
              child:  Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: (){
                        Get.toNamed(WelcomeScreen.route);
                      },
                      child: Container(
                        height: 75,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: const Color(0xFFD3D3D3))
                        ),
                        child:  Center(
                          child: AddText(text: 'Maybe later'.tr,
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: (){
                      Get.toNamed(WelcomeScreen.route);
                    },
                    child: Container(
                        height: 75,
                        color: const Color(0xFFFEBB0A),
                        child:  Center(
                          child: AddText(text: 'Continue'.tr,
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  )
                  )
                ],
              ),
            ),
            addHeight(40),
          ],
        ),
      ),
    );
  }
}
