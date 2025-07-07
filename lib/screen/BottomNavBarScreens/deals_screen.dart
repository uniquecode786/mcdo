import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routers/routers.dart';


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
                          fontSize: 12,
                          color: Colors.black
                        ),),
                    )
                  ],
                ),
              ),
            ),
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
                return Column(
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
                          'how it works',
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
