import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcdo/routers/routers.dart';
import '../../wigets/addText.dart';
import '../more_screens/AddressScreen/address_details_screen.dart';
import '../more_screens/about_screen.dart';
import '../more_screens/contact_us.dart';
import '../more_screens/favourites_screen.dart';
import '../more_screens/select_religion_more.dart';
import '../more_screens/terms_condition_screen.dart';
import 'account_screen.dart';
import 'delete_account_screen.dart';
import 'history_screen.dart';


class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
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
                  Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     const AddText(text: 'More',
                     fontWeight: FontWeight.w400,
                       fontSize: 15,
                       color: Colors.black,
                     ),
                     Image.asset('assets/icons/burger_more.png',
                       height: 140,
                       width: 180,
                     ),
                   ],
                 ).paddingSymmetric(horizontal: 16),
                addHeight(78),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/m.svg',
                  text: 'Home',
                  height: 12,
                  width: 10,
                  onTap: (){},
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/menu.svg',
                  text: 'Menu',
                  height: 18,
                  width: 10,
                  onTap: (){

                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/document.svg',
                  text: 'History',
                  height: 18,
                  width: 10,
                  onTap: (){
                   Get.toNamed(HistoryScreen.route);
                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/profile.svg',
                  text: 'My Profile',
                  height: 18,
                  width: 10,
                  onTap: (){
                    Get.toNamed(AccountScreen.route);
                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/location.svg',
                  text: 'Addresses',
                  height: 18,
                  width: 10,
                  onTap: (){
                   Get.toNamed(AddressScreen.route);
                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/chat.svg',
                  text: 'Support',
                  height: 20,
                  width: 10,
                  onTap: (){
                   Get.toNamed(SupportScreen.route);
                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/heart.svg',
                  text: 'Favorites',
                  height: 16,
                  width: 10,
                  onTap: (){
                    Get.toNamed(FavouritesScreen.route);
                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/about.svg',
                  text: 'About App',
                  height: 18,
                  width: 10,
                  onTap: (){
                   Get.toNamed(AboutScreen.route);
                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/terms.svg',
                  text: 'Terms & Conditions',
                  height: 18,
                  width: 1,
                  onTap: (){
                   Get.toNamed(TermsConditionScreen.route);
                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/remove-user.svg',
                  text: 'Delete User',
                  height: 18,
                  width: 10,
                  onTap: (){
                   Get.toNamed(DeleteAccountScreen.route);
                    // showDeleteAccountPopup(context);
                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/share.svg',
                  text: 'Share The App',
                  height: 16,
                  width: 10,
                  onTap: (){},
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/logout.svg',
                  text: 'Sign Out',
                  height: 17,
                  width: 10,
                  onTap: (){
                    showSignOutPopup(context);
                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/worldwide.svg',
                  text: 'Region & Language',
                  height: 20,
                  width: 10,
                  onTap: (){
                   Get.toNamed( SelectReligionScreen.route);
                  },
                ),
              ],
            ),
          )),
    );
  }
}

void showSignOutPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: Colors.white,
      title: const Text('Sign Out'),
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


class IconTextArrowRow extends StatelessWidget {
  final String leadingIcon;
  final String text;
  final double height;
  final double width;
  final VoidCallback? onTap;

  const IconTextArrowRow({
    Key? key,
    required this.leadingIcon,
    required this.text,
    required this.width,
    required this.height,
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
                    SvgPicture.asset(
                      leadingIcon,
                      width: width,
                      height: height,
                    ),
                    const SizedBox(width: 10),
                    AddText(text: text,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.black,
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
