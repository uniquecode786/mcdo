import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdo/routers/routers.dart';

import '../../wigets/addText.dart';
import '../more_screens/privacy_statement.dart';


class CommunicationSettingsScreen extends StatefulWidget {
  const CommunicationSettingsScreen({super.key});
  static String route = '/CommunicationSettingsScreen';
  @override
  State<CommunicationSettingsScreen> createState() => _CommunicationSettingsScreenState();
}

class _CommunicationSettingsScreenState extends State<CommunicationSettingsScreen> {
  bool switchValue = false;
  bool switchValue1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                addHeight(57),
                Image.asset('assets/icons/mail.png',
                  height: 60,
                  width: 60,
                ),
                addHeight(19),
                const AddText(
                    text: 'Communication settings',
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  fontSize: 26,
                ),
                addHeight(46),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(
                         child: AddText(
                           text: 'i\'d like to receive news, updates and promotions from Meatway\'s via email',
                           color: Colors.black,
                           fontWeight: FontWeight.w400,
                           fontSize: 11,
                           height: 1.6,
                         ),
                     ),
                    CupertinoSwitch(
                      value: switchValue,
                      onChanged: (bool value) {
                        setState(() {
                          switchValue = value;
                        });
                      },
                    ),
                  ],
                ),
                addHeight(28),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(
                         child: AddText(
                           text: 'i\'d like to receive news, updates and promotions from Meatway\'s via sMS',
                           color: Colors.black,
                           fontWeight: FontWeight.w400,
                           fontSize: 11,
                           height: 1.6,
                         ),
                     ),
                    CupertinoSwitch(
                      value: switchValue1,
                      onChanged: (bool value) {
                        setState(() {
                          switchValue1 = value;
                        });
                      },
                    ),
                  ],
                ),
                addHeight(28),
                GestureDetector(
                  onTap: (){
                    Get.toNamed(PrivacyStatementScreen.route);
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const AddText(
                        text: 'Privacy Statement',
                        color: Color(0xFF176397),
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        decoration: TextDecoration.underline,
                        decoColor: Color(0xFF176397),
                      ),
                     addWidth(10),
                      Image.asset('assets/icons/tm_icon.png',
                        height: 15,
                        width: 15,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
