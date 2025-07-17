 import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routers/routers.dart';
import '../../wigets/addText.dart';
import '../../wigets/common_button.dart';


class PersonalDetailsScreenEdit extends StatefulWidget {
  const PersonalDetailsScreenEdit({super.key});
  static String route = '/PersonalDetailsScreenEdit';
  @override
  State<PersonalDetailsScreenEdit> createState() => _PersonalDetailsScreenEditState();
}

class _PersonalDetailsScreenEditState extends State<PersonalDetailsScreenEdit> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            addHeight(70),
            Image.asset('assets/icons/my_m.png',
              height: 24,
              width: 80,
            ),
            addHeight(29),
            const AddText(text: 'personal details',
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            addHeight(22),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const AddText(text: 'First name',
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Color(0xFF6B6B6B),
                ),
                addHeight(6),
                const AddText(text: 'Himpreet',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ],
            ),
            addHeight(22),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const AddText(text: 'Last name',
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Color(0xFF6B6B6B),
                ),
                addHeight(6),
                const AddText(text: 'Singh',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ],
            ),
            addHeight(22),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const AddText(text: 'Email',
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Color(0xFF6B6B6B),
                ),
                addHeight(6),
                const AddText(text: 'himpreet.kaushal@gmail.com',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ],
            ),
            addHeight(22),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const AddText(text: 'Gender',
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Color(0xFF6B6B6B),
                ),
                addHeight(6),
                const AddText(text: 'male',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ],
            ),
            addHeight(22),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const AddText(text: 'Date of birth',
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Color(0xFF6B6B6B),
                ),
                addHeight(6),
                const AddText(text: '2003-05-07',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ],
            ),


          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: CustomButton(
          title: 'edit profile',
          onPressed: (){},
          radius: 0,
        ),
      ),
    );
  }
}
