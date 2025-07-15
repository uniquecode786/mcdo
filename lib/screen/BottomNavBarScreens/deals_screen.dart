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
                      child: Text('get 50 bonus points on your first order - scan the qr code or order in the app.',
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
            Container(
              height: 320,
              width: Get.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(image: AssetImage('assets/icons/scan_bg.png',
                ),fit: BoxFit.cover
                )
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/icons/scan.png',
                        height: 160,
                          width: 169,
                        ),
                        addHeight(30),
                        Text('scan code to collect points.',
                        style: GoogleFonts.poppins(
                           color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        ),
                        )
                      ],
                    ),
                  ),
                  const Positioned(
                    right: 50,
                      top: 50,
                      child: Icon(Icons.error_outline,color: Colors.black,
                      size: 30,)
                  )
                ],
              ),
            ),
            addHeight(49),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('rewards',
                  style: GoogleFonts.poppins(
                     fontWeight: FontWeight.w700,
                      fontSize: 25,
                    color: Colors.black
                  ),),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('view all',
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
                                      color: const Color(0xFF0A0D120A).withOpacity(0.1),
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
                                        Image.asset('assets/icons/reward_bg.png',
                                         height: 130,
                                         width: 130,
                                        ),
                                        addHeight(8),

                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              border: Border.all(color: Colors.black,width: 2)
                                          ),
                                          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 2),
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
                                                fontSize: 13,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black
                                              )
                                              ),
                                            ],
                                          ),
                                        ),
                                        addHeight(36),
                                        Text('free espresso',
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
                                        top: 50,
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
              child: Text('deals',
              style: GoogleFonts.poppins(
                fontSize: 26,
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
                                  image: const DecorationImage(image: AssetImage('assets/icons/home_top.png'),
                                  fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(14)
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 10,
                                      left: 7,
                                      child: Container(
                                        height: 24,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFEDEDED),
                                          borderRadius: BorderRadius.circular(4)
                                        ),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Image.asset('assets/icons/watch.png',
                                            height: 12,
                                             width: 12,
                                            ),
                                            Text('expires soon',
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 11,
                                              color: Colors.black
                                            ),
                                            )
                                          ],
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
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            addHeight(40)
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
