import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controller/bottom_controller.dart';
import 'deals_screen.dart';
import 'food_screen.dart';
import 'home_screen.dart';
import 'more_screen.dart';

class BottomNavbar extends StatefulWidget {
  static String route = "/BottomNavbar";
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {

  final bottomController = Get.put(BottomNavBarController());

  final pages = [
    const HomePageScreen(),
    const DealsScreen(),
    const FoodScreen(),
    const MoreScreen(),
  ];



  bool allowExitApp = false;

  Timer? _timer;

  bool exitApp() {
    if (allowExitApp == true) {
      stopTimer();
      // hideToast();
      return true;
    }

    allowExitApp = true;
    stopTimer();
    // showToast("Press again to exit app".tr, gravity: ToastGravity.CENTER);
    _timer = Timer(const Duration(milliseconds: 500), () {
      allowExitApp = false;
    });
    return false;
  }

  stopTimer() {
    try {
      if (_timer == null) return;
      _timer!.cancel();
      _timer = null;
    } catch (e) {
      return;
    }
  }

  @override
  void dispose() {
    super.dispose();
    stopTimer();
  }

  @override
  Widget build(BuildContext context) {
    // FirebaseMessaging.instance.getToken().then((value) {
    //   print(value);
    // });
    return WillPopScope(
      onWillPop: () async {
        if (bottomController.pageIndex.value != 0) {
          bottomController.pageIndex.value = 0;
          return false;
        } else {
          return exitApp();
        }
      },
      child: Obx(() {
        return Scaffold(
          body: pages[bottomController.pageIndex.value],
          backgroundColor: Colors.white,
          bottomNavigationBar: buildMyNavBar(),
        );
      }),
    );
  }

  buildMyNavBar() {
    const padding = EdgeInsets.only(bottom: 7, top: 3);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SafeArea(
          bottom: true,
          child: Container(
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Color(0xFFE3E3E3)
                )
              )
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: MaterialButton(
                          padding: padding,
                          onPressed: () {
                            bottomController.updateIndexValue(0);
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/icons/home_more.png',
                                  height: 20,
                                  color: bottomController.pageIndex.value == 0
                                      ? const Color(0xFFFFC732)
                                      : const Color(0xFFBCBCBC),
                                ),
                              ),
                              Text(
                                'Home',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    color:Colors.black,
                                    fontSize: 13,
                                    fontWeight: bottomController.pageIndex.value == 0 ?FontWeight.w700 : FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: MaterialButton(
                          padding: padding,
                          onPressed: () {
                            bottomController.updateIndexValue(1);
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:  bottomController.pageIndex.value == 1 ? Image.asset(
                                  'assets/icons/deals.png',
                                  height: 20,
                                ) : Image.asset(
                                  'assets/icons/deals_gray.png',
                                  height: 20,
                                ),
                              ),
                              Text(
                              'Deals',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    color:Colors.black,
                                    fontSize: 13,
                                    fontWeight: bottomController.pageIndex.value == 1 ?FontWeight.w700 : FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: MaterialButton(
                          padding: padding,
                          onPressed: () {
                            bottomController.updateIndexValue(2);
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/icons/food.png',
                                  height: 20,
                                  color: bottomController.pageIndex.value == 2
                                      ? null
                                      : const Color(0xFF9E9E9E),
                                ),
                              ),
                              Text(
                               'Food',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    color:Colors.black,
                                    fontSize: 13,
                                    fontWeight: bottomController.pageIndex.value == 2 ?FontWeight.w700 : FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: MaterialButton(
                          padding: padding,
                          onPressed: () {
                            bottomController.updateIndexValue(3);
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/icons/more.png',
                                  height: 20,
                                  width: 20,
                                  color: bottomController.pageIndex.value == 3
                                      ? null
                                      : const Color(0xFF9E9E9E),
                                ),
                              ),
                              Text(
                               'More',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    color:Colors.black,
                                    fontSize: 13,
                                    fontWeight: bottomController.pageIndex.value == 3 ?FontWeight.w700 : FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
