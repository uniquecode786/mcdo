import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdo/routers/routers.dart';
import 'package:mcdo/screen/BottomNavBarScreens/password_security.dart';
import 'package:mcdo/screen/BottomNavBarScreens/personal_details_screen.dart';
import '../../wigets/addText.dart';
import 'communication_settings_screen.dart';
import 'delete_account_screen.dart';
import 'more_screen.dart';


class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});
  static String route = '/AccountScreen';
  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                addHeight(70),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Image.asset('assets/icons/my_m.png',
                  height: 24,
                  width: 80,
                  ),
                ),
                addHeight(29),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: AddText(text: 'account',
                  fontSize: 34,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                addHeight(51),
                IconTextArrowRow(
                  leadingIcon: 'assets/icons/my_profile.png',
                  text: 'Personal Details',
                  onTap: (){
                    Get.toNamed(PersonalDetailsScreenEdit.route);
                  },
                ),
                IconTextArrowRow(
                  leadingIcon: 'assets/icons/history.png',
                  text: 'Password & Security',
                  onTap: (){
                    Get.toNamed(PasswordSecurityScreen.route);
                  },
                ),
                IconTextArrowRow(
                  leadingIcon: 'assets/icons/history.png',
                  text: 'Communication Settings',
                  onTap: (){
                    Get.toNamed(CommunicationSettingsScreen.route);
                  },
                ),
                // IconTextArrowRow(
                //   leadingIcon: 'assets/icons/home.png',
                //   text: 'Delete account',
                //   onTap: (){
                //     Get.toNamed(DeleteAccountScreen.route);
                //   },
                // ),
                // IconTextArrowRow(
                //   leadingIcon: 'assets/icons/home.png',
                //   text: 'log out',
                //   onTap: (){},
                // ),

              ],
            ),
          )),
    );
  }
}
