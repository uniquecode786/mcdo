import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routers/routers.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});
  static String route = '/SupportScreen';
  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
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
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/home_more.png',
                      height: 20,
                      width: 20,
                      color: const Color(0xFFEAAD21),
                    ),
                    addWidth(10),
                    Text('Support',
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
              )
          ],
        ),
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(0.5),
        elevation: 5,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
        child: ListView(
          children:  [
            Text(
              'General questions',
              style: GoogleFonts.poppins(fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFFDA0006)
              ),
            ),
            addHeight(20),
            const QuestionSection(
              question: 'What is this app for?',
              answer:
              'In addition to providing information on our products and restaurants, we also offer app users many interesting offers. This is an app for our loyal Mcdwoay’s customers.',
            ),
            const QuestionSection(
              question: 'I have no Internet connection, I cannot use the app',
              answer:
              'An internet connection is required to ensure you are viewing the most recent information in the app.',
            ),
            const QuestionSection(
              question:
              'I have no network in the restaurant, how can I redeem my offer?',
              answer:
              'To redeem an offer, simply activate it in an area with a connection (for example outside for a better 3G connection). The offer will remain visible for a set period of time even after disconnecting from the network.',
            ),
            const QuestionSection(
              question: 'My application won’t work',
              answer:
              'If this happens, we would recommend:\n• Restart your phone, as a first option\n• If that doesn’t work, you could uninstall your app\n• Lastly, contact customer services for help',
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionSection extends StatelessWidget {
  final String question;
  final String answer;

  const QuestionSection({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: GoogleFonts.poppins(fontSize: 13,
                fontWeight: FontWeight.w600,
                color: const Color(0xFFDA0006)
            ),
          ),
        addHeight(7),
          Text(
            answer,
            style: GoogleFonts.poppins(fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.black
            ),
          ),
        ],
      ),
    );
  }
}
