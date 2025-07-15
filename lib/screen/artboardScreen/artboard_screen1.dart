import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:mcdo/routers/routers.dart';
import 'package:mcdo/wigets/addText.dart';

import '../../wigets/common_button.dart';
import 'artBoard_screen2.dart';


class ArtboardScreen1 extends StatefulWidget {
  const ArtboardScreen1({super.key});
  static String route = '/ArtboardScreen1';
  
  @override
  State<ArtboardScreen1> createState() => _ArtboardScreen1State();
}

class _ArtboardScreen1State extends State<ArtboardScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                addHeight(40),
                Center(
                  child: Image.asset('assets/icons/restaurant.png',
                    height: 320,
                    width: 292,
                  ),
                ),
                AddText(
                  text: 'Nice to meet you!'.tr,
                  fontWeight: FontWeight.w700,
                  fontSize: 31,
                ),
                addHeight(12),
                AddText(
                  text: 'thanks for choosing to use the McDonald\'s app in Lebanon. we\'re really excited to show you what\'s on available...'.tr,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 1.3,
                ),
              ],
            ).paddingSymmetric(horizontal: 16),
          ),
          Center(
            child: Container(
               height: 13,
               width: 13,
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
            ),
          ),
          addHeight(28),
          CustomButton(
            radius: 0,
            title: 'Tell me more!'.tr,
            onPressed: () {
              Get.toNamed(ArtboardScreen2.route);
            },
          ),
          addHeight(40),
        ],
      ),
    );
  }
}
