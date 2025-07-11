import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcdo/routers/routers.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Meatway',
      locale: const Locale('en','US'),
      builder: (c, child) => GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus!.unfocus();
        },
        behavior: HitTestBehavior.translucent,
        child: child!,
      ),
      theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.black,
            surfaceTint: Colors.white,
            background: Colors.white,

          ),
          // cardTheme: const CardThemeData(color: Colors.white, surfaceTintColor: Colors.white)
      ),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: MyRouters.route,
    );
  }
}

