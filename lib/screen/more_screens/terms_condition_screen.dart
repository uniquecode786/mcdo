import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routers/routers.dart';


class TermsConditionScreen extends StatefulWidget {
  const TermsConditionScreen({super.key});
  static String route = '/TermsConditionScreen';
  @override
  State<TermsConditionScreen> createState() => _TermsConditionScreenState();
}

class _TermsConditionScreenState extends State<TermsConditionScreen> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/common_back.png',
               height: 40,
               width: 40,
              )
            ],
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/icons/home_more.png',
              height: 20,
              width: 20,
              color: const Color(0xFFEAAD21),
            ),
            addWidth(10),
            Text('Terms and Conditions',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.black
              ),),
            addWidth(10),
            Image.asset('assets/icons/home_more.png',
              height: 20,
              width: 20,
              color: const Color(0xFFEAAD21),
            ),
          ],
        ),
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(0.5),
        elevation: 5,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('The Meatway App Is A Mobile Application Designed For The Customers Of The Meatway Restaurant. The App Allows Customers To Order Fried Chicken And Other Food Items From The Restaurant And Have Them Delivered To Their Doorstep.The App Is Easy To Use And Provides Customers With A Seamless Ordering Experience. Customers Can Browse The Menu, Select Their Preferred Food Items, Add Them To The Cart, And Pay For The Order Using A Variety Of Payment Options Available On The App.The Meatway App Is Available For Both Ios And Android Devices And Can Be Downloaded For Free From The Apple App Store And Google Play Store Respectively.With The Meatway App, Customers Can Enjoy The Convenience Of Ordering Their Favorite Fried Chicken And Other Food Items From The Comfort Of Their Homes Or Offices. The App Is Designed To Offer A Hassle-Free Food Delivery Service To The Customers Of The Meatway Restaurant.If You Have Any Questions Or Feedback About The Meatway App, Please Contact Us At [Insert Contact Email].',
             style: GoogleFonts.poppins(
               color: Colors.black,
               fontWeight: FontWeight.w400,
               fontSize: 12,
               height: 1.6,
             ),
            )
          ],
        ),
      ),
    );
  }
}
