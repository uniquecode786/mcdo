import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../BottomNavBarScreens/bottom_navbar_screen.dart';
import 'artboard_screen.dart';

class SplashScreen extends StatefulWidget {
  static String route = "/SplashScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  bool _isLoading = true;

  userCheck() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    if (pref.getString('token') != null) {
      Get.offAllNamed(BottomNavbar.route);
    }else{
      Get.offAllNamed(ArtboardScreen.route);
    }
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        userCheck();
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/icons/app_new_icon.png",
              height: 36,
              width: 200,
            ),
          ),
        ],
      ),
    );
  }

}