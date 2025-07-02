import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routers/routers.dart';
import '../../wigets/addText.dart';
import '../../wigets/common_button.dart';
import 'create_account_screen.dart';


class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({super.key});
  static String route = '/PersonalDetailsScreen';
  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
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
                        child: const Icon(Icons.arrow_back_ios,color: Colors.black,
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
                        const AddText(text: 'personal details',
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 34,
                          height: 1.2,
                        ),
                        addHeight(46),
                        const AddText(
                          text: 'Let us know how to properly address you. Please fill in your details.',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        addHeight(22),
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
              title: 'continue'.tr,
              onPressed: () {
                Get.toNamed(CreateAccountScreen.route);
              },
            ),
            addHeight(40),
          ],
        ),
      ),
    );
  }
}
