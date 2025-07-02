import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../screen/BottomNavBarScreens/bottom_navbar_screen.dart';
import '../screen/BottomNavBarScreens/communication_settings_screen.dart';
import '../screen/BottomNavBarScreens/delete_account_screen.dart';
import '../screen/BottomNavBarScreens/password_security.dart';
import '../screen/BottomNavBarScreens/personal_details_screen.dart';
import '../screen/artboardScreen/artBoard_screen2.dart';
import '../screen/artboardScreen/artBoard_screen3.dart';
import '../screen/artboardScreen/artboard_screen.dart';
import '../screen/artboardScreen/artboard_screen1.dart';
import '../screen/authScreens/create_account_screen.dart';
import '../screen/authScreens/gender_datebirth_screen.dart';
import '../screen/authScreens/personal_details_screen.dart';
import '../screen/authScreens/signIn_option_screen.dart';
import '../screen/authScreens/terms_conditions_screen.dart';
import '../screen/authScreens/two_factor_validation_screen.dart';
import '../screen/authScreens/welcome_screen.dart';


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
    GetPage(name: GenderDateBirthScreen.route, page: () =>  const GenderDateBirthScreen()),
    GetPage(name: WelcomeScreen.route, page: () =>  const WelcomeScreen()),
    GetPage(name: DeleteAccountScreen.route, page: () =>  const DeleteAccountScreen()),
    GetPage(name: CommunicationSettingsScreen.route, page: () =>  const CommunicationSettingsScreen()),
    GetPage(name: PasswordSecurityScreen.route, page: () =>  const PasswordSecurityScreen()),
    GetPage(name: PersonalDetailsScreenEdit.route, page: () =>  const PersonalDetailsScreenEdit()),
    GetPage(name: BottomNavbar.route, page: () =>  const BottomNavbar()),

  ];
}

