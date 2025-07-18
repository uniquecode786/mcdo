import 'package:flutter/material.dart';
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
                 leadingIcon: 'assets/icons/home_more.png',
                  text: 'home',
                  onTap: (){},
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/menu_more.png',
                  text: 'menu',
                  onTap: (){

                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/history.png',
                  text: 'history',
                  onTap: (){
                   Get.toNamed(HistoryScreen.route);
                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/my_profile.png',
                  text: 'my profile',
                  onTap: (){
                    Get.toNamed(AccountScreen.route);
                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/addresses.png',
                  text: 'addresses',
                  onTap: (){
                   Get.toNamed(AddressScreen.route);
                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/support.png',
                  text: 'support',
                  onTap: (){
                   Get.toNamed(SupportScreen.route);
                  },
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Get.toNamed(FavouritesScreen.route);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                              const Icon(Icons.favorite_border,color: Colors.black,size: 22,),
                                const SizedBox(width: 10),
                                Text(
                                  'favorites'.capitalizeFirst!,
                                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,
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
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/about_app.png',
                  text: 'about app',
                  onTap: (){
                   Get.toNamed(AboutScreen.route);
                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/terms.png',
                  text: 'terms & conditions',
                  onTap: (){
                   Get.toNamed(TermsConditionScreen.route);
                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/delete_user.png',
                  text: 'delete user',
                  onTap: (){
                   Get.toNamed(DeleteAccountScreen.route);
                    // showDeleteAccountPopup(context);
                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/share.png',
                  text: 'share the app',
                  onTap: (){},
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/sign_out.png',
                  text: 'sign out',
                  onTap: (){
                    showSignOutPopup(context);
                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/world.png',
                  text: 'religion & language',
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
  final VoidCallback? onTap;

  const IconTextArrowRow({
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
                    Image.asset(leadingIcon, color: Colors.black,width: 20,
                    height: 20,),
                    const SizedBox(width: 10),
                    AddText(text: text.capitalizeFirst!,
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
