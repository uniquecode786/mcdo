import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../screen/BottomNavBarScreens/account_screen.dart';
import '../screen/BottomNavBarScreens/basket_screen.dart';
import '../screen/BottomNavBarScreens/bottom_navbar_screen.dart';
import '../screen/BottomNavBarScreens/checkout_screen.dart';
import '../screen/BottomNavBarScreens/communication_settings_screen.dart';
import '../screen/BottomNavBarScreens/delete_account_screen.dart';
import '../screen/BottomNavBarScreens/drawer_menu_Screen.dart';
import '../screen/BottomNavBarScreens/history_screen.dart';
import '../screen/BottomNavBarScreens/no_matches_found.dart';
import '../screen/BottomNavBarScreens/password_security.dart';
import '../screen/BottomNavBarScreens/personal_details_screen.dart';
import '../screen/BottomNavBarScreens/single_food_screen.dart';
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
import '../screen/more_screens/AddressScreen/address_details_screen.dart';
import '../screen/more_screens/AddressScreen/delivery_location_screen.dart';
import '../screen/more_screens/AddressScreen/edit_address_screen.dart';
import '../screen/more_screens/AddressScreen/support_screen.dart';
import '../screen/more_screens/about_screen.dart';
import '../screen/more_screens/change_password.dart';
import '../screen/more_screens/contact_us.dart';
import '../screen/more_screens/favourites_screen.dart';
import '../screen/more_screens/privacy_statement.dart';
import '../screen/more_screens/select_religion_more.dart';
import '../screen/more_screens/terms_condition_screen.dart';


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
    GetPage(name: NoMatchesFoundScreen.route, page: () =>  const NoMatchesFoundScreen()),
    GetPage(name: HistoryScreen.route, page: () =>  const HistoryScreen()),
    GetPage(name: SelectReligionScreen.route, page: () =>  const SelectReligionScreen()),
    GetPage(name: TermsConditionScreen.route, page: () =>  const TermsConditionScreen()),
    GetPage(name: AboutScreen.route, page: () =>  const AboutScreen()),
    GetPage(name: FavouritesScreen.route, page: () =>  const FavouritesScreen()),
    GetPage(name: SupportScreen.route, page: () =>  const SupportScreen()),
    GetPage(name: AddressScreen.route, page: () =>  const AddressScreen()),
    GetPage(name: AddAddressScreen.route, page: () =>  const AddAddressScreen()),
    GetPage(name: DeliveryTrackingScreen.route, page: () =>  const DeliveryTrackingScreen()),
    GetPage(name: FoodSupport.route, page: () =>  const FoodSupport()),
    GetPage(name: AccountScreen.route, page: () =>  const AccountScreen()),
    GetPage(name: PrivacyStatementScreen.route, page: () =>  const PrivacyStatementScreen()),
    GetPage(name: DrawerMenuScreen.route, page: () =>  const DrawerMenuScreen()),
    GetPage(name: SingleFoodScreen.route, page: () =>  const SingleFoodScreen()),
    GetPage(name: BasketScreen.route, page: () =>  const BasketScreen()),
    GetPage(name: CheckoutScreen.route, page: () =>  const CheckoutScreen()),
    GetPage(name: ChangePassword.route, page: () =>  const ChangePassword()),

  ];
}

