import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdo/screen/BottomNavBarScreens/password_security.dart';
import 'package:mcdo/screen/BottomNavBarScreens/personal_details_screen.dart';
import '../../wigets/addText.dart';
import '../authScreens/personal_details_screen.dart';
import 'communication_settings_screen.dart';
import 'delete_account_screen.dart';
import 'more_screen.dart';


class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});
  // static String route = '/AccountScreen';
  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const AddText(text: 'Account',
                fontSize: 34,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                IconTextArrowRow(
                  leadingIcon: 'assets/icons/home.png',
                  text: 'Personal Details',
                  onTap: (){
                    Get.toNamed(PersonalDetailsScreenEdit.route);
                  },
                ),
                IconTextArrowRow(
                  leadingIcon: 'assets/icons/home.png',
                  text: 'Password & Security',
                  onTap: (){
                    Get.toNamed(PasswordSecurityScreen.route);
                  },
                ),
                IconTextArrowRow(
                  leadingIcon: 'assets/icons/home.png',
                  text: 'Communication Settings',
                  onTap: (){
                    Get.toNamed(CommunicationSettingsScreen.route);
                  },
                ),
                IconTextArrowRow(
                  leadingIcon: 'assets/icons/home.png',
                  text: 'Delete account',
                  onTap: (){
                    Get.toNamed(DeleteAccountScreen.route);
                  },
                ),
                IconTextArrowRow(
                  leadingIcon: 'assets/icons/home.png',
                  text: 'log out',
                  onTap: (){},
                ),

              ],
            ),
          )),
    );
  }
}
