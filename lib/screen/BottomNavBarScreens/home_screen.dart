import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routers/routers.dart';


class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final List<Map<String, String>> items = [
    {
      'image': 'assets/icons/order_online.png',
      'text': 'hello, mo! click here to order online!',
    },
    {
      'image': 'assets/icons/vanilla.png',
      'text': 'Rate Your Visit and get 50% off on your ice-cream Vanilla Cone!',
    },
    {
      'image': 'assets/icons/timer.png',
      'text': 'we open from 8:00 A.m till 12 a.m. ',
    },
    {
      'image': 'assets/icons/rightKnow.png',
      'text': 'your right to know! ',
    },
    {
      'image': 'assets/icons/join_team.png',
      'text': 'join our team!',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset('assets/icons/app_new_icon.png',
              width: 50,
              height: 50,
            ),
          ],
        ),
        leadingWidth: 60,
        actions: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/scanner.png',
                width: 30,
                height: 30,
              ),
            ],
          ),
          addWidth(12)
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/icons/home_top.png'),
                  fit: BoxFit.cover,
                )
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text('Life deserves a break and ... a burger.',
                  style: GoogleFonts.poppins(
                    fontSize: 27,
                    height: 1.4,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF17648E)
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ),
            addHeight(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Image.asset('assets/icons/burger.png',
                width: 28,
                height: 28,
              ),
            ),
            addHeight(14),
            const Divider(
              color: Color(0xFFE3E3E3),
              thickness: 1,
            ),
            addHeight(28),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: Get.width,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                        child:
                        Icon(Icons.close, color: Colors.grey.shade600)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Seems you\'re not logged in.',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                height: 1.3
                              ),
                              ),
                              const SizedBox(height: 12),
                               Text(
                                'Log in or become a member to order and access personalised deals.',
                                 style: GoogleFonts.poppins(
                                     fontSize: 11,
                                     fontWeight: FontWeight.w400,
                                     color: Colors.black,
                                     height: 1.4
                                 ),
                              ),
                            ],
                          ),
                        ),
                        addWidth(10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            'assets/icons/key_icon.png',
                            height: 84,
                            width: 132,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(80, 25),
                        backgroundColor: const Color(0xFFFFC732),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4), // Adjust padding if needed
                      ),
                      child: Text(
                        'Log in',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            addHeight(28),
            ListView.builder(
              itemCount: items.length,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 200,
                        width: Get.width,
                        decoration:  BoxDecoration(
                            color: const Color(0xFFFFC732),
                          borderRadius: BorderRadius.circular(14)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              items[index]['image']!,
                              height: items[index]['image'] == '0'
                                  ? 190 : items[index]['image'] == '1' ? 120 :
                              items[index]['image'] == '2' ? 110 :
                              items[index]['image'] == '3' ? 120 : 100,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      addHeight(24),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            items[index]['text']!,
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      addHeight(15)
                    ],
                  ),
                );
              },
            ),
            Center(
                child: Text('That\'s all for now.',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 18
                ),
                )),
            addHeight(3),
            Center(
                child: Text('Check it again soon for more dellciousness!',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black
                ),
                )),
            addHeight(28),
            Center(
              child: Image.asset('assets/icons/refresh.png',
              height: 53,
              width: 53,
              ),
            ),
            addHeight(60),
            Center(
              child: Image.asset('assets/icons/app_logos.png',
                height: 40,
                width: 110,
              ),
            ),
            addHeight(20),
          ],
        ),
      ),
    );
  }
}
