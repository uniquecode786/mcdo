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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/app_new_icon.png',
              width: 30,
              height: 30,
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
              height: 288,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/icons/home_top.png'),
                  fit: BoxFit.cover,
                )
              ),
              child: Center(
                child: Text('life deserves a break and ... a burger.',
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF17648E)
                ),
                  textAlign: TextAlign.center,
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
            addHeight(32),
            const Divider(
              color: Color(0xFFE3E3E3),
              thickness: 1,
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
                        height: 251,
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
                              items[index]['image'] == '2' ? 124 :
                              items[index]['image'] == '3' ? 146 : 125,
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
                                fontSize: 25,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      addHeight(40)
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
