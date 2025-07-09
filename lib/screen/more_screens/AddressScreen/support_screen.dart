import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routers/routers.dart';

class FoodSupport extends StatefulWidget {
  const FoodSupport({super.key});
  static String route = '/FoodSupport';
  @override
  State<FoodSupport> createState() => _FoodSupportState();
}

class _FoodSupportState extends State<FoodSupport> {
  @override
  Widget build(BuildContext context) {
    final contactInfo = [
      {
        'icon': 'assets/icons/phone.png',
        'text': '+961 3 785 380',
        'url': 'tel:+9613785380',
      },
      {
        'icon':  'assets/icons/whatsapp.png',
        'text': 'https://wa.me/+9613785380',
        'url': 'https://wa.me/+9613785380',
      },
      {
        'icon': 'assets/icons/mail_bg.png',
        'text': 'msg@mokaiuxx.com',
        'url': 'mailto:msg@mokaiuxx.com',
      }
    ];

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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 40),
        children: [
           Text(
            "How can we help?",
            style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 12),
          ...List.generate(
            3,
                (index) => ExpansionTile(
               tilePadding: EdgeInsets.zero,
              leading: Image.asset('assets/icons/plate.png',
               height: 28,
               width: 28,
              ),
              iconColor: const Color(0xFFFFC732),
              collapsedIconColor: const Color(0xFFFFC732),
              title:  Text("I Can't Place My Order",
                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500,
                  color: const Color(0xFF333333)
              ),),
              children:  [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("How was your Food?",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400,
                        color: const Color(0xFF999999)
                        ),
                      ),
                      Text("How was the driver behavior?",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400,
                            color: const Color(0xFF999999)
                        ), ),
                      Text("Any Comments should we know about?",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400,
                            color: const Color(0xFF999999)
                        ),
                      ),
                      Text("How can we make your experience better?",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400,
                            color: const Color(0xFF999999)
                        ),
                      ),
                         ],
                  ),
                )
              ],
            ),
          ),
          addHeight(30),
           Text(
            "Didn't find your answer? Contact Us",
             style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          addHeight(30),
          ...contactInfo.map(
                (info) => ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 5),
              leading: Image.asset(info['icon'] as String,
                height: 40,
                width: 40,
              ),
              title: Text(info['text'] as String,
                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              onTap: ()  {
                // final url = Uri.parse(info['url'] as String);
                // if (await canLaunchUrl(url)) {
                //   await launchUrl(url, mode: LaunchMode.externalApplication);
                // }
              },
            ),
          ),
        ],
      ),
    );
  }
}
