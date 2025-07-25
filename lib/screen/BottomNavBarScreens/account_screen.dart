import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
                  child: AddText(text: 'Account',
                  fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                addHeight(51),
                IconTextArrowRow1(
                  leadingIcon: 'assets/icons/profile.svg',
                  text: 'Personal Details',
                  onTap: (){
                    Get.toNamed(PersonalDetailsScreenEdit.route);
                  },
                ),
                IconTextArrowRow1(
                  leadingIcon: 'assets/icons/document.svg',
                  text: 'Password & Security',
                  onTap: (){
                    Get.toNamed(PasswordSecurityScreen.route);
                  },
                ),
                IconTextArrowRow1(
                  leadingIcon: 'assets/icons/document.svg',
                  text: 'Communication Settings',
                  onTap: (){
                    Get.toNamed(CommunicationSettingsScreen.route);
                  },
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Get.toNamed(DeleteAccountScreen.route);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/icons/delete.png', color: Colors.black,width: 16,
                                  height: 20,),
                                const SizedBox(width: 10),
                                Text(
                                  'Delete Account',
                                  style: GoogleFonts.poppins(fontSize: 14, color: Colors.black,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ],
                            ),
                            const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16),
                          ],
                        ),
                      ),
                    ),
                    const Divider(height: 1, thickness: 1,
                      color: Color(0xFFC5C5C5),
                    ),
                  ],
                ),
                IconTextArrowRow1(
                  leadingIcon: 'assets/icons/logout.svg',
                  text: 'Logout',
                  onTap: (){
                    showSignOutPopup(context);
                  },
                ),

              ],
            ),
          )),
    );
  }
  void showSignOutPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        title:  const AddText(text:'Log Out',
        fontSize: 20,
        fontWeight: FontWeight.w500,),
        content: const Text('Are you sure you want to sign out?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              // Add sign-out logic here
            },
            child: const Text('Yes'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('No'),
          ),
        ],
      ),
    );
  }
}
class IconTextArrowRow1 extends StatelessWidget {
  final String leadingIcon;
  final String text;
  final VoidCallback? onTap;

  const IconTextArrowRow1({
    Key? key,
    required this.leadingIcon,
    required this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(leadingIcon, color: Colors.black,width: 16,
                      height: 18,),
                    const SizedBox(width: 10),
                    Text(
                      text,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16),
              ],
            ),
          ),
        ),
        const Divider(height: 1, thickness: 1,
          color: Color(0xFFC5C5C5),
        ),
      ],
    );
  }
}
