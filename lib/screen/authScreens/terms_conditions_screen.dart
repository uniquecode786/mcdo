import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdo/routers/routers.dart';
import 'package:mcdo/screen/authScreens/personal_details_screen.dart';
import 'package:mcdo/screen/authScreens/signIn_option_screen.dart';
import 'package:mcdo/wigets/addText.dart';

import '../../wigets/common_button.dart';
import '../more_screens/privacy_statement.dart';


class TermsConditionsScreen extends StatefulWidget {
  const TermsConditionsScreen({super.key});
  static String route = '/TermsConditionsScreen';
  @override
  State<TermsConditionsScreen> createState() => _TermsConditionsScreenState();
}

class _TermsConditionsScreenState extends State<TermsConditionsScreen> {
  bool switchValue = false;
  bool switchValue1 = false;
  bool switchValue2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  addHeight(40),
                  GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: const Icon(Icons.arrow_back_ios,color: Colors.black,
                      size: 20,),
                  ),
                  addHeight(25),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(
                          child: AddText(text: 'The super important legal bit',
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 34,
                            height: 1.2,
                          )),
                      addWidth(20),
                      Image.asset('assets/icons/notes_icon.png',
                        height: 100,
                        width: 80,
                      ),
                      addWidth(20)
                    ],
                  ).paddingOnly(left: 10),
                  addHeight(42),
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
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6B6B6B),
                      )
                    ],
                  ),
                  addHeight(30),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/icons/star.png',
                              height: 20,
                              width: 10,
                            ),
                            addWidth(5),
                            const Expanded(
                              child: AddText(
                                text: 'i am aged 16 or over and agree to the Terms',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.2,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                      CupertinoSwitch(
                        value: switchValue,
                        activeColor: const Color(0xFFFEBB0A),
                        onChanged: (bool value) {
                          setState(() {
                            switchValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                  addHeight(37),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      addWidth(20),
                      const Expanded(
                        child: AddText(
                          text: 'i\'d like to receive news, updates and promotions from McDonald\'s via email',
                          fontSize: 14,
                          height: 1.2,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      CupertinoSwitch(
                        value: switchValue1,
                        activeColor: const Color(0xFFFEBB0A),
                        onChanged: (bool value) {
                          setState(() {
                            switchValue1 = value;
                          });
                        },
                      ),
                    ],
                  ),
                  addHeight(37),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      addWidth(20),
                      const Expanded(
                        child: AddText(
                          text: 'i\'d like to receive news, updates and promotions from McDonald\'s via sMS',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      CupertinoSwitch(
                        value: switchValue2,
                        activeColor: const Color(0xFFFEBB0A),
                        onChanged: (bool value) {
                          setState(() {
                            switchValue2 = value;
                          });
                        },
                      ),
                    ],
                  ),
                  addHeight(46),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      addWidth(20),
                     const AddText(
                        text: 'terms & conditions',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF176397),
                      ),
                      addWidth(8),
                      Image.asset('assets/icons/tm_icon.png',
                      height: 15,
                        width: 15,
                      )
                    ],
                  ),
                  addHeight(19),
                   GestureDetector(
                     onTap: (){
                       Get.toNamed(PrivacyStatementScreen.route);
                     },
                     child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        addWidth(20),
                       const AddText(
                          text: 'Privacy Statement',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF176397),
                        ),
                        addWidth(8),
                        Image.asset('assets/icons/tm_icon.png',
                          height: 15,
                          width: 15,
                        )
                      ],
                                       ),
                   ),
                  addHeight(36),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: AddText(text: 'The purpose of this app is to provide you with offers based on your preferences and app usage. If you do not want McDonald\'s to use your preferences and app usage in this way then you should not proceed to registration.',
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    color: Color(0xFF6B6B6B),),
                  ),
                  addHeight(66),
                ],
              ).paddingSymmetric(horizontal: 10),
              CustomButton(
                radius: 0,
                title: 'continue'.tr,
                onPressed: () {
                  Get.toNamed(PersonalDetailsScreen.route);
                },
              ),
              addHeight(40),
            ],
          ),
        ),
      ),
    );
  }
}
