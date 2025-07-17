import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcdo/screen/BottomNavBarScreens/single_food_screen.dart';

import '../../routers/routers.dart';


class DrawerMenuScreen extends StatefulWidget {
  const DrawerMenuScreen({super.key});
  static String route = '/DrawerMenuScreen';

  @override
  State<DrawerMenuScreen> createState() => _DrawerMenuScreenState();
}

class _DrawerMenuScreenState extends State<DrawerMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color:Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/icons/home_more.png',
                                height: 20,
                                width: 20,
                                color: const Color(0xFFEAAD21),
                              ),
                              addWidth(10),
                              Text('Delivery menu',
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
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('assets/icons/bike.png',
                                  height: 21,
                                  width: 21,
                                ),
                                addWidth(5),
                                Text('Delivery',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFFD42216)
                                  ),),
                              ],
                            ),
                            Container(
                              width: 1,
                              height: 18,
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              color: const Color(0xFFEAEAEA),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('assets/icons/car.png',
                                  height: 21,
                                  width: 21,
                                ),
                                addWidth(5),
                                Text('Pickup',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFFe79d98)
                                  ),),
                              ],
                            ),
                            Container(
                              width: 1,
                              height: 18,
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              color: const Color(0xFFEAEAEA),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('assets/icons/dine_in.png',
                                  height: 21,
                                  width: 21,
                                ),
                                addWidth(5),
                                Text('Dine-in',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFFe79d98)
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    addHeight(34)
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  addHeight(43),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/home_more.png',
                        height: 20,
                        width: 20,
                        color: const Color(0xFFEAAD21),
                      ),
                      addWidth(10),
                      Text('Offers',
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
                  addHeight(32),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          Get.toNamed(SingleFoodScreen.route);
                        },
                        child: Container(
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
                                              child: Image.asset('assets/icons/fav.png',
                                                height: 30,
                                                width: 30,
                                              )),
                                          addHeight(20),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 20.0),
                                            child: Image.asset('assets/icons/burger_img.png',
                                              height: 78,
                                              width: 100,
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
                                          fontWeight: FontWeight.w500,
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
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  addHeight(60),
                  Image.asset('assets/icons/app_logos.png',
                    height: 40,
                    width: 110,
                  ),
                  addHeight(20)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
