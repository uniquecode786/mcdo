import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routers/routers.dart';
import '../../wigets/addText.dart';


class PasswordSecurityScreen extends StatefulWidget {
  const PasswordSecurityScreen({super.key});
  static String route = '/PasswordSecurityScreen';
  @override
  State<PasswordSecurityScreen> createState() => _PasswordSecurityScreenState();
}

class _PasswordSecurityScreenState extends State<PasswordSecurityScreen> {
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
                addHeight(70),
                Image.asset('assets/icons/key.png',
                  height: 63,
                  width: 81,
                ),
                addHeight(29),
                const AddText(text: 'Password & Security',
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                addHeight(27),
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     const Icon(Icons.check_circle,size: 18,),
                    addWidth(5),
                    const AddText(
                      text: 'Two fector authcation is on',
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ],
                ),
                addHeight(27),
                const AddText(
                  text: 'Two ipsum dolor sit amet, consectetur adipis cing elit. nunc elementum quis urna laoreet luctus. cras consequat eleifend magna et pulvinar.',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 1.6,
                  color: Color(0xFF6B6B6B),
                ),
                addHeight(23),
                const AddText(
                  text: 'Nulla porttitor magna elementum, maximus ipsum et, mollis nisi. nunc gravida est et nisi cursus, interdum venenatis.',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 1.6,
                  color: Color(0xFF6B6B6B),
                ),
                addHeight(29),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Change Password',
                          style: TextStyle(fontSize: 14, color: Color(0xFF6B6B6B),
                          fontWeight: FontWeight.w500
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
