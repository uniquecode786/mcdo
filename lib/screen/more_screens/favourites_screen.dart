import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routers/routers.dart';


class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});
  static String route = '/FavouritesScreen';

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
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
            Text('Favourites',
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
      body:  Column(
        children: [
          addHeight(30),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 1,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                child: Stack(
                  children: [
                    Container(
                      color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '1 x ',
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          color: const Color(0xFFE02020),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Fillet Fish',
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  addHeight(9),
                                  Text(
                                    'Red Hot Twister Sandwich +\nRizo + Coleslaw + Drink.',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  const SizedBox(height: 6),

                                ],
                              ).paddingSymmetric(horizontal: 14,vertical: 14),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Image.asset('assets/icons/liked.png',
                                      height: 30,
                                      width: 30,
                                    )),
                                addHeight(20),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Image.asset('assets/icons/burger_img.png',
                                    height: 78,
                                    width: 110,
                                  ),
                                ),
                                addHeight(20),
                              ],
                            ),
                          ],
                        ),
                        addHeight(30),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Handle customization tap
                            },
                            child:  Row(
                              children: [
                                Text(
                                  'Customize',
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xFF203EE0),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                addWidth(9),
                                Image.asset('assets/icons/customize.png',
                                  height: 16,
                                  width: 16,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            color: const Color(0xFFEAEAEA),
                            height: 1,
                            width: Get.width * .52,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '470,000 LBP',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          )
                        ],
                      ).paddingSymmetric(horizontal: 14,vertical: 10),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        color: const Color(0xFFFFC732),
                        child: Center(
                          child: Text('Add To Cart',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
