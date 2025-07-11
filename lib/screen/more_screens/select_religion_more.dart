import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routers/routers.dart';
import '../../wigets/addText.dart';
import '../../wigets/common_button.dart';


class SelectReligionScreen extends StatefulWidget {
  const SelectReligionScreen({super.key});
  static String route = '/SelectReligionScreen';
  @override
  State<SelectReligionScreen> createState() => _SelectReligionScreenState();
}

class _SelectReligionScreenState extends State<SelectReligionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/icons/earth_icon.png',
              height: 300,
              width: 300,
            ),
          ),
          AddText(
              text:'Select region'.tr,
              color: Colors.black,
              fontSize: 34,
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
          selectionTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icons/language_icon.png',height: 20,width: 20,),
              ],
            ),
            title: 'Language',
            onTap: () {},
          ),
          addHeight(41),
          CustomButton(
            radius: 4,
            title: 'continue'.tr,
            onPressed: () {
              Get.back();
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
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                if (subtitle != null)
                  Text(
                    subtitle,
                    style: const TextStyle(color: Colors.grey),
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