import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcdo/screen/BottomNavBarScreens/single_food_screen.dart';
import 'package:mcdo/wigets/sizes.dart';

import '../../routers/routers.dart';
import '../../wigets/custom_button.dart';
import 'drawer_menu_Screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);
  // static String route = "/MenuScreen";

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {



  ScrollController scrollControllerVertical = ScrollController();

  // listenToScroll() {
  //   int tempInt = menuController.selectedIndex.value;
  //   scrollControllerVertical.addListener(() {
  //     // scrollControllerVertical
  //     for (var i = 0; i < menuController.forMenuScreen.entries.length; i++) {
  //       if (checkContextPosition(menuController.forMenuScreen.entries
  //           .toList()[i]
  //           .value
  //           .menuKeyLower
  //           .currentContext)) {
  //         tempInt = i;
  //         if (tempInt != menuController.selectedIndex.value) {
  //           // log("Now Moving..........$i");
  //           menuController.autoScrollController!.scrollToIndex(i,
  //               preferPosition: AutoScrollPosition.middle,
  //               duration: const Duration(milliseconds: 10));
  //           menuController.selectedIndex.value = i;
  //         }
  //         break;
  //       }
  //     }
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   if (menuController.forMenuScreen.isEmpty &&
  //       menuController.storeInfo.data == null) {
  //     menuController.getAll();
  //   }
  //   SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
  //     if (Get.arguments != null) {
  //       if (kDebugMode) {
  //         print(Get.arguments);
  //       }
  //       if (menuController.forMenuScreen.isNotEmpty) {
  //         for (var i = 0;
  //         i < menuController.forMenuScreen.entries.length;
  //         i++) {
  //           if (kDebugMode) {
  //             print(menuController.forMenuScreen.entries
  //                 .toList()[i]
  //                 .value
  //                 .slug
  //                 .toString());
  //           }
  //           if (menuController.forMenuScreen.entries
  //               .toList()[i]
  //               .value
  //               .slug
  //               .toString() ==
  //               Get.arguments.toString()) {
  //             menuController.selectedIndex.value = i;
  //             menuController.autoScrollController!.scrollToIndex(i,
  //                 preferPosition: AutoScrollPosition.middle,
  //                 duration: const Duration(milliseconds: 200));
  //             setState(() {});
  //             final keyContext1 = menuController.forMenuScreen.entries
  //                 .toList()[i]
  //                 .value
  //                 .menuKeyUpper
  //                 .currentContext;
  //             if (keyContext1 != null) {
  //               Scrollable.ensureVisible(keyContext1,
  //                   curve: Curves.ease,
  //                   alignment: .1,
  //                   duration: const Duration(seconds: 1));
  //             }
  //             final keyContext = menuController.forMenuScreen.entries
  //                 .toList()[i]
  //                 .value
  //                 .menuKeyLower
  //                 .currentContext;
  //             if (keyContext != null) {
  //               Scrollable.ensureVisible(keyContext,
  //                   curve: Curves.ease,
  //                   alignment: .05,
  //                   duration: const Duration(seconds: 1));
  //             }
  //             log("......................      ${menuController.selectedIndex.value}");
  //             setState(() {});
  //             break;
  //           }
  //         }
  //       }
  //     }
  //     listenToScroll();
  //   });
  // }

  List<String> shopInfo = [
     "🔥 Offers",
    "Beef",
    "Chicken",
    "Fish",
    "Joy Meals",
  ];
  int selectedIndex = 0;
  String getOfferText(List<String> shopInfo, int i) {
    if (i >= 0 && i < shopInfo.length) {
      return shopInfo[i];
    }
    return '';
  }
  // getOfferText(ShopDetails shopInfo, int i) {
  //   switch (i) {
  //     case 0:
  //       return shopInfo.offerTag1.toString();
  //     case 1:
  //       return shopInfo.offerTag2.toString();
  //     case 2:
  //       return shopInfo.offerTag3.toString();
  //     case 3:
  //       return shopInfo.offerTag4.toString();
  //     case 4:
  //       return shopInfo.offerTag5.toString();
  //     case 5:
  //       return shopInfo.offerTag6.toString();
  //   }
  //   return '';
  // }

  bool checkContextPosition(BuildContext? context) {
    // widget is visible
    if (context != null) {
      final box = context.findRenderObject() as RenderBox;
      final pos = box.localToGlobal(Offset.zero);
      if (pos.dy > 160 && pos.dy < 320) {
        return true;
      } else {
        return false;
      }
    } else {
      log(context.toString());
      return false;
    }
  }

  @override
  void dispose() {
    scrollControllerVertical.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        // menuController.repositories.hideLoader();
        return true;
      },
      child: Scaffold(
        backgroundColor: const Color(0xfff5f5f5),
          body:CustomScrollView(
            controller: scrollControllerVertical,
            shrinkWrap: true,
            slivers: [
              firstAppBar(size),
              secondAppBar(),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    addHeight(30),
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
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.black.withOpacity(0.07),
                              //     blurRadius: 10,
                              //     spreadRadius: 2,
                              //     offset: const Offset(0, 4),
                              //   )
                              // ],
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
                                                    fontWeight: FontWeight.w400,
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
                    addHeight(30),
                    Image.asset('assets/icons/app_logos.png',
                      height: 40,
                      width: 110,
                    ),
                    addHeight(120)
                  ],
                ),
              )
            ],
          ),
        bottomSheet: CustomBottomBar(
          title: 'View Basket',
          price: 'LBP 6,520,000',
          onTap: () {
            Get.toNamed(SingleFoodScreen.route);
          },
        ),
      ),
    );
  }

  secondAppBar() {
    return SliverAppBar(
        expandedHeight: 60,
        pinned: true,
        primary: false,
        toolbarHeight: 45,
        collapsedHeight: 45,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: const SizedBox.shrink(),
        leadingWidth: 0,
        titleSpacing: 0,
        title: SizedBox(
          height: 45,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  // Get.toNamed(DrawerMenuScreen.route);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Image.asset(
                    'assets/icons/drawer.png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Flexible(
                child: Container(
                  height: 42,
                  alignment: Alignment.centerLeft,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(shopInfo.length, (index) {
                        final title = shopInfo[index];
                        final isSelected = selectedIndex == index;

                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            margin: const EdgeInsets.only(right: 4),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: isSelected ? const Color(0xFFE02020) : Colors.transparent,
                                  width: 2.5,
                                ),
                              ),
                            ),
                            child: Text(
                              title,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: isSelected ? const Color(0xFFE02020) : const Color(0xFF888888),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            height: 0,
            color: const Color(0xfff5f5f5),
          ),
        ));
  }

  SliverAppBar firstAppBar(Size size) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: Platform.isAndroid ? 365 : 310,
      collapsedHeight: 56,
      flexibleSpace: headerSection(size),
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      leading: AnimatedBuilder(
          animation: scrollControllerVertical,
          builder: (context, child) {
            return Opacity(
              opacity: (scrollControllerVertical.offset / 375) > 1
                  ? 1
                  : scrollControllerVertical.offset / 375,
              child: SizedBox(
                height: 5,
                width: 5,
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // width: 5,
                      // height: 5,
                      // padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey)),
                      child: const Icon(Icons.arrow_back, color: Colors.grey),
                    ),
                  ),
                ),
              ),
            );
          }),
      centerTitle: true,
      title: AnimatedBuilder(
        animation: scrollControllerVertical,
        builder: (context, child) {
          return Opacity(
            opacity: (scrollControllerVertical.offset / 375) > 1
                ? 1
                : scrollControllerVertical.offset / 375,
            child: RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                    child: Image.asset('assets/icons/home_more.png',
                height: 20,
                width: 20,
                color: const Color(0xFFEAAD21),
              ),
                  ),
                  const TextSpan(text: '  '),
                  TextSpan(
                    text: "Menu",
                    style: GoogleFonts.poppins(
                        color: const Color(0xFF292323),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  const TextSpan(text: '  '),
                  WidgetSpan(
                    child: Image.asset('assets/icons/home_more.png',
                      height: 20,
                      width: 20,
                      color: const Color(0xFFEAAD21),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      // actions: [
      //   Padding(
      //     padding: const EdgeInsets.only(right: 24.0, top: 8),
      //     child: Obx(() {
      //       return InkWell(
      //         onTap: () {
      //           Get.toNamed(CartScreen.route);
      //         },
      //         child: (cartController.isDataLoading.value &&
      //             cartController.model.value.data != null &&
      //             cartController.model.value.data!.items!.isNotEmpty)
      //             ? Badge(
      //             badgeStyle: const BadgeStyle(badgeColor: Colors.black),
      //             badgeContent: Text(
      //               cartController.model.value.data!.items!
      //                   .map((e) => int.parse((e.quantity ?? 0).toString()))
      //                   .toList()
      //                   .sum
      //                   .toString(),
      //               style: GoogleFonts.poppins(
      //                   color: Colors.white, fontSize: 10),
      //             ),
      //             child: Image.asset(
      //               'assets/images/cooking_icon.png',
      //               width: 26,
      //               height: 26,
      //             ))
      //             : Image.asset(
      //           'assets/images/cooking_icon.png',
      //           width: 26,
      //           height: 26,
      //         ),
      //       );
      //     }),
      //   )
      // ],
    );
  }


  headerSection(Size size) {
    // var shopInfo = menuController.storeInfo.data!.shopDetails!.first;
    return FlexibleSpaceBar(
      background: Container(
        color: const Color(0xffF5F5F5),
        height: 340,
        child: Stack(children: [
          SizedBox(
            height: 230,
            width: context.getDeviceSize.width,
            child: Image.asset('assets/icons/food_bg.png',
              height: 230,
              fit: BoxFit.fill ,
            ),
          ),
          Positioned(
            top: 170,
            left: 0,
            right: 0,
            child: Column(
              children: [

                Container(
                  width: size.width * .9,
                    padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Delivery Fee',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: const Color(0xFF888888)
                                ),),
                              Text('LBP 100,000',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                    color: Colors.black
                                ),),
                            ],
                          ),
                          Container(
                            width: 1,
                            height: 30,
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            color: const Color(0xFFEAEAEA),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Delivery Time',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: const Color(0xFF888888)
                                ),),
                              Text('30 mins',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                    color: Colors.black
                                ),),
                            ],
                          ),
                          Container(
                            width: 1,
                            height: 30,
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            color: const Color(0xFFEAEAEA),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Discounts',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: const Color(0xFF888888)
                                ),),
                              Text('Above 2M',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                    color: Colors.black
                                ),),
                            ],
                          ),

                        ],
                      ),
                      addHeight(10),
                      const Divider(
                        color: Color(0xFFEAEAEA),
                        thickness: 1,
                      ),
                      addHeight(10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Minimum Order',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: const Color(0xFF888888)
                                ),),
                              Text('LBP 550,000',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                    color: Colors.black
                                ),),
                            ],
                          ),
                          addWidth(8),
                          Container(
                            width: 1,
                            height: 30,
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            color: const Color(0xFFEAEAEA),
                          ),
                          addWidth(19),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Opening Hours',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: const Color(0xFF888888)
                                ),),
                              Text('12:00 PM - 2:00 AM',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                    color: Colors.black
                                ),),
                            ],
                          ),
                          addWidth(8),
                          // Container(
                          //   width: 1,
                          //   height: 30,
                          //   padding: const EdgeInsets.symmetric(vertical: 6),
                          //   color: const Color(0xFFEAEAEA),
                          // ),

                        ],
                      ),
                    ],
                  )
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width * .9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: const Color(0xFF0A0D120A).withOpacity(0.1),
                    //     offset: const Offset(0.0, 2.0),
                    //     blurRadius: 5,
                    //   ),
                    // ],
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
                            height: 18,
                            width: 18,
                          ),
                          addWidth(5),
                          Text('Delivery'.toUpperCase(),
                            style: GoogleFonts.poppins(
                                fontSize: 12,
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
                            height: 18,
                            width: 18,
                          ),
                          addWidth(5),
                          Text('Pickup'.toUpperCase(),
                            style: GoogleFonts.poppins(
                                fontSize: 12,
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
                          Image.asset('assets/icons/dine_in.png',
                            height: 18,
                            width: 18,
                          ),
                          addWidth(5),
                          Text('Dine-in'.toUpperCase(),
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFFD42216)
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 40,
              left: 20,
              child: GestureDetector(
                onTap: (){
                  // bottomController.pageIndex.value = 0;
                },
                child: Image.asset('assets/icons/arrow_back_white.png',
                  height: 38,
                  width: 38,
                ),
              )
          ),
        ]),
      ),
    );
  }
}
