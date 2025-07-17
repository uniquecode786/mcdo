import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routers/routers.dart';
import 'history_screen.dart';
import 'no_matches_found.dart';


class DealsScreen extends StatefulWidget {
  const DealsScreen({super.key});

  @override
  State<DealsScreen> createState() => _DealsScreenState();
}

class _DealsScreenState extends State<DealsScreen> {
  final List<Map<String, String>> items = [
    {
      'image': 'assets/icons/burger_more.png',
      'text': 'Hello, Mo! Get your  exclusive welcome offer and start collecting points now!',
    },
    {
      'image': 'assets/icons/burger_more.png',
      'text': 'grand & tasty bundle',
    },
    {
      'image': 'assets/icons/burger_more.png',
      'text': 'grand & tasty bundle',
    },
    {
      'image': 'assets/icons/burger_more.png',
      'text': 'Hello, Mo! Get your  exclusive welcome offer and start collecting points now!',
    },
    {
      'image': 'assets/icons/burger_more.png',
      'text': 'grand & tasty bundle',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/icons/logo.png',
                height: 23,
                width: 120,
              ),
            ],
          ),
        ),
        leadingWidth: 80,
        actions: [
          GestureDetector(
            onTap: (){

            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icons/scanner.png',
                  width: 30,
                  height: 30,
                ),
              ],
            ),
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
              width: Get.width,
              height: 62,
              color: const Color(0xFFEDEDED),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/icons/hlo.png',
                      height: 24,
                      width: 24,
                    ),
                    addWidth(10),
                    Expanded(
                      child: Text('Get 50 bonus points on your first order - scan the qr code or order in the app.',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.black
                        ),),
                    )
                  ],
                ),
              ),
            ),
            addHeight(29),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 20,
                        spreadRadius: 3,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(3),
                  child: Container(
                    height: 240,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFC732),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:  Stack(
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset('assets/icons/scan.png',
                                height: 160,
                                width: 169,
                              ),
                              addHeight(19),
                              Text('scan code to collect points.',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600
                                ),
                              )
                            ],
                          ),
                        ),
                        const Positioned(
                            right: 20,
                            top: 20,
                            child: Icon(Icons.error_outline,color: Colors.black,
                              size: 30,)
                        ),
                        Positioned(
                            right: 0,
                            left: 0,
                            top: 156,
                            child:  Center(
                              child: Text('m 778 61',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            addHeight(49),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Rewards',
                  style: GoogleFonts.poppins(
                     fontWeight: FontWeight.w700,
                      fontSize: 21,
                    color: Colors.black
                  ),),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('View all',
                      style: GoogleFonts.poppins(
                         fontWeight: FontWeight.w400,
                          fontSize: 14,
                        color: const Color(0xFF176397),
                        decoration: TextDecoration.underline,
                        decorationColor:  const Color(0xFF176397),
                      ),),
                      addWidth(5),
                      const Icon(
                        Icons.arrow_forward_outlined,
                        color:  Color(0xFF176397),
                        size: 16)
                    ],
                  ),
                ],
              ),
            ),
            addHeight(33),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(
                        4, (index) {
                        return GestureDetector(
                          onTap: (){
                            Get.toNamed(HistoryScreen.route);
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xFF0A0D120A).withOpacity(0.20),
                                      offset: const Offset(0.0, 2.0),
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                                padding: const EdgeInsets.all(20),
                                child: Stack(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        // Image.asset('assets/icons/reward_bg.png',
                                        //  height: 120,
                                        //  width: 120,
                                        // ),
                                        Container(
                                          height: 120,
                                          width: 120,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(image: AssetImage('assets/icons/reward_bg_circle.png'))
                                          ),
                                            padding: const EdgeInsets.all(4),
                                          child: Container(
                                            height: 90,
                                            width: 90,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle
                                            ),
                                          )
                                        ),
                                        addHeight(12),

                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              border: Border.all(color: Colors.black,width: 1.4)
                                          ),
                                          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 0),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                             Image.asset('assets/icons/lock.png',
                                             height: 11,
                                               width: 11,
                                             ),
                                              addWidth(5),
                                              Text('200 pts',
                                              style: GoogleFonts.poppins(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black
                                              )
                                              ),
                                            ],
                                          ),
                                        ),
                                        addHeight(36),
                                        Text('Free espresso',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: Colors.black
                                        ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                        left: 0,
                                        right: 0,
                                        top: 40,
                                        child: Image.asset('assets/icons/coffie.png',
                                          height: 93,
                                        )
                                    ),
                                  ],
                                ),
                              ),
                              addWidth(14)
                            ],
                          ),
                        );
                      },
                      ),
                    ).paddingAll(10)
                ),
              ),
            ),
            addHeight(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Deals',
              style: GoogleFonts.poppins(
                fontSize: 21,
                fontWeight: FontWeight.w600,
                color: Colors.black
              ),),
            ),
            addHeight(28),
            ListView.builder(
              itemCount: items.length,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    Get.toNamed(NoMatchesFoundScreen.route);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow:  [
                            BoxShadow(
                              color: const Color(0xFF0A0D120A).withOpacity(0.30),
                              offset: const Offset(0.0, 2.0),
                              blurRadius: 12,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 180,
                              width: Get.width,
                              decoration:  BoxDecoration(
                                  image: const DecorationImage(image: AssetImage('assets/icons/home_top.png'),
                                  fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 10,
                                      left: 7,
                                      child: Container(
                                        height: 24,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFEDEDED),
                                          borderRadius: BorderRadius.circular(4)
                                        ),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            addWidth(5),
                                            Image.asset('assets/icons/watch.png',
                                            height: 10,
                                             width: 10,
                                            ),
                                            addWidth(10),
                                            Text('expires soon',
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 11,
                                              color: Colors.black
                                            ),
                                            ),
                                            addWidth(5),                                          ],
                                        ),
                                      )
                                  ),
                                  Positioned(
                                    child: Center(
                                      child: Image.asset(
                                        items[index]['image']!,
                                        height: items[index]['image'] == '0'
                                            ? 190 : items[index]['image'] == '1' ? 120 :
                                        items[index]['image'] == '2' ? 124 :
                                        items[index]['image'] == '3' ? 146 : 125,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
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
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            addHeight(25)
                          ],
                        ),
                      ),
                      addHeight(20)
                    ],
                  ),
                );
              },
            ),
            addHeight(8),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.07),
                    blurRadius: 12,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "my meatway's rewards",
                        style:  GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                     addHeight(12),
                      InkWell(
                        onTap: () {
                        },
                        child:  Text(
                          'How it works',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF176397),
                            decoration: TextDecoration.underline,
                            decorationColor:  const Color(0xFF176397),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                       Image.asset('assets/icons/reward_icon.png',
                         height: 30,
                         width: 60,
                       )
                    ],
                  )
                ],
              ),
            ),
            addHeight(101),
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
