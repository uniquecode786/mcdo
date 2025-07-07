import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdo/routers/routers.dart';
import '../../wigets/addText.dart';
import 'account_screen.dart';


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
                     const AddText(text: 'more',
                     fontWeight: FontWeight.w700,
                       fontSize: 34,
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
                 leadingIcon: 'assets/icons/menu.png',
                  text: 'menu',
                  onTap: (){
                     Get.to(()=> const AccountScreen());
                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/history.png',
                  text: 'history',
                  onTap: (){},
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/my_profile.png',
                  text: 'my profile',
                  onTap: (){},
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/addresses.png',
                  text: 'addresses',
                  onTap: (){},
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/support.png',
                  text: 'support',
                  onTap: (){},
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/favorites.png',
                  text: 'favorites',
                  onTap: (){},
                ),   IconTextArrowRow(
                 leadingIcon: 'assets/icons/about_app.png',
                  text: 'about app',
                  onTap: (){},
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/terms.png',
                  text: 'terms & conditions',
                  onTap: (){},
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/delete_user.png',
                  text: 'delete user',
                  onTap: (){},
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/share.png',
                  text: 'share the app',
                  onTap: (){},
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/sign_out.png',
                  text: 'sign out',
                  onTap: (){},
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/world.png',
                  text: 'religion & language',
                  onTap: (){},
                ),
              ],
            ),
          )),
    );
  }
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
                    Text(
                      text,
                      style: const TextStyle(fontSize: 16, color: Colors.black),
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
