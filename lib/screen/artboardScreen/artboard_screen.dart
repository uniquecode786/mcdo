import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routers/routers.dart';
import '../../wigets/addText.dart';
import '../../wigets/common_button.dart';
import 'artboard_screen1.dart';


class ArtboardScreen extends StatefulWidget {
  const ArtboardScreen({super.key});

  @override
  State<ArtboardScreen> createState() => _ArtboardScreenState();
}

class _ArtboardScreenState extends State<ArtboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          addHeight(60),
           Center(
             child: Image.asset('assets/icons/earth_icon.png',
             height: 250,
               width: 250,
             ),
           ),
           AddText(
              text:'Select region'.tr,
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w700
           ),
          addHeight(35),
          selectionTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icons/country_icon.png',height: 20,width: 20,),
              ],
            ),
            title: 'Lebanon',
            subtitle: 'Lebanon',
            onTap: () {},
          ),
          addHeight(23),
          AddText(
              text:'Language'.tr,
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w700
          ),
          addHeight(12),
          GestureDetector(
            onTap: (){},
            child: Container(
              height: 74,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF707070)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/language_icon.png',height: 20,width: 20,),
                    ],
                  ),
                    const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'English',
                          style: GoogleFonts.poppins(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios, size: 16),
                ],
              ),
            ),
          ),
          addHeight(41),
          CustomButton(
            radius: 4,
            title: 'continue'.tr,
            onPressed: () {
               Get.toNamed(ArtboardScreen1.route);
            },
          )
        ],
      ).paddingSymmetric(horizontal: 16),
    );
  }
}
Widget selectionTile({
  required String title,
  String? subtitle,
  Widget? leading,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 74,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF707070)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leading != null) ...[
            leading,
            const SizedBox(width: 12),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                if (subtitle != null)
                  Text(
                    subtitle,
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      fontSize: 15
                    ),
                  ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    ),
  );
}