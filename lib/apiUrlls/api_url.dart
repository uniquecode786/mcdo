import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ApiUrls {

  static const String baseUrl = 'https://meetway-app.mystagingwebsite.com/wp-json/api/woocustomer/';
  static const String signUpUrl = "${baseUrl}register";
  static const String emailVerificationUrl = "${baseUrl}email_verification";
  static const String resendOtpUrl = "${baseUrl}resend_otp";
  static const String changePasswordUrl = "${baseUrl}change_password";
  static const String getProfileUrl = "${baseUrl}get_profile_fields";
  static const String updateProfileUrl = "${baseUrl}update_profile_fields";

}
showToast(message, {ToastGravity? gravity, bool? center}) {
  Fluttertoast.cancel();
  Fluttertoast.showToast(
      msg: message.toString(),
      toastLength: Toast.LENGTH_LONG,
      gravity: center == true ? ToastGravity.CENTER :  gravity ?? ToastGravity.BOTTOM,
      timeInSecForIosWeb: 4,
      backgroundColor: const Color(0xFFFFC732),
      textColor:  Colors.black,
      fontSize: 15);
}


hideToast() {
  Fluttertoast.cancel();
}