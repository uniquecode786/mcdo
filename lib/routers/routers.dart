import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../screen/artboardScreen/artBoard_screen2.dart';
import '../screen/artboardScreen/artBoard_screen3.dart';
import '../screen/artboardScreen/artboard_screen.dart';
import '../screen/artboardScreen/artboard_screen1.dart';
import '../screen/authScreens/create_account_screen.dart';
import '../screen/authScreens/personal_details_screen.dart';
import '../screen/authScreens/signIn_option_screen.dart';
import '../screen/authScreens/terms_conditions_screen.dart';
import '../screen/authScreens/two_factor_validation_screen.dart';


SizedBox addHeight(double size) => SizedBox(height: size);
SizedBox addWidth(double size) => SizedBox(width: size);

class MyRouters {
  static var route = [
    GetPage(name: '/', page: () =>  const ArtboardScreen()),
    GetPage(name: ArtboardScreen1.route, page: () =>  const ArtboardScreen1()),
    GetPage(name: ArtboardScreen2.route, page: () =>  const ArtboardScreen2()),
    GetPage(name: ArtboardScreen3.route, page: () =>  const ArtboardScreen3()),
    GetPage(name: SignInOptionScreen.route, page: () =>  const SignInOptionScreen()),
    GetPage(name: TermsConditionsScreen.route, page: () =>  const TermsConditionsScreen()),
    GetPage(name: PersonalDetailsScreen.route, page: () =>  const PersonalDetailsScreen()),
    GetPage(name: CreateAccountScreen.route, page: () =>  const CreateAccountScreen()),
    GetPage(name: TwoFactorValidationScreen.route, page: () =>  const TwoFactorValidationScreen()),

  ];
}

