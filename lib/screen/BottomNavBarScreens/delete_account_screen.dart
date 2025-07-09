import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdo/screen/more_screens/terms_condition_screen.dart';

import '../../routers/routers.dart';
import '../../wigets/addText.dart';


class DeleteAccountScreen extends StatefulWidget {
  const DeleteAccountScreen({super.key});
  static String route = '/DeleteAccountScreen';
  @override
  State<DeleteAccountScreen> createState() => _DeleteAccountScreenState();
}

class _DeleteAccountScreenState extends State<DeleteAccountScreen> {
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
            const AddText(text: 'Delete account',
              fontSize: 34,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            addHeight(57),
            const AddText(
              text: 'deleting ipsum dolor sit amet, consectetur adipis cing elit. nunc elementum quis urna laoreet luctus. cras consequat eleifend.',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF6B6B6B),
            ),
            addHeight(23),
            const AddText(
              text: ' nulla porttitor magna elementum, maximus ipsum et, mollis nisi. nunc gravida est et nisi cursus, interdum venenatis.',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF6B6B6B),
            ),
            addHeight(29),
            GestureDetector(
              onTap: (){
                showDeleteAccountPopup(context);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4),
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const  Text(
                      "Go to 'My account'",
                      style: TextStyle(fontSize: 16, color: Color(0xFF6B6B6B),
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    Image.asset('assets/icons/tm_icon.png',
                      height: 29,
                      color: Color(0xFF6B6B6B),
                      width: 29,
                    )
                  ],
                ),
              ),
            ),
            addHeight(37),
            GestureDetector(
              onTap: () {
                Get.toNamed(TermsConditionScreen.route);
              },
              child: const AddText(
                text: 'terms & conditions',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF176397),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

void showDeleteAccountPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: Colors.white,
      title: const Text('Delete Account'),
      content: const Text('This action cannot be undone.\nAre you sure you want to delete your account?'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            // Add delete account logic here
          },
          child: const Text('Delete', style: TextStyle(color: Colors.red)),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
      ],
    ),
  );
}