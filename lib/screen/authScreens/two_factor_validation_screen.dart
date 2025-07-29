import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcdo/models/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../apiUrlls/api_url.dart';
import '../../controller/signup_controller.dart';
import '../../models/common_model.dart';
import '../../repo/repository.dart';
import '../../routers/routers.dart';
import '../../wigets/addText.dart';
import '../../wigets/common_button.dart';
import 'gender_datebirth_screen.dart';


class TwoFactorValidationScreen extends StatefulWidget {
  const TwoFactorValidationScreen({super.key});
  static String route = '/TwoFactorValidationScreen';
  @override
  State<TwoFactorValidationScreen> createState() => _TwoFactorValidationScreenState();
}

class _TwoFactorValidationScreenState extends State<TwoFactorValidationScreen> {

  final controller = Get.put(SignUpController());
  final Repositories repositories = Repositories();
  final signUpController = Get.put(SignUpController());
  final formKey = GlobalKey<FormState>();
  TextEditingController otpController = TextEditingController();

  emailVerification() {
    if (formKey.currentState!.validate()) {
      repositories.postApi(mapData: {
        "email": signUpController.emailController.text.trim().toString(),
        'otp': otpController.text.trim().toString(),
      },
          url: ApiUrls.emailVerificationUrl,
          context: context,
          showResponse: true)
          .then((value) async {
        LoginModal response = LoginModal.fromJson(jsonDecode(value));
        showToast(response.message.toString(), center: true);
        if (response.status == true) {
          Get.toNamed(GenderDateBirthScreen.route);
          repositories.saveLoginDetails(jsonEncode(response));
          SharedPreferences pref = await SharedPreferences.getInstance();
          pref.setString('token', response.data!.cookie.toString());
          log('ththt${controller.loginModal.data!.cookie.toString()}');
        } else {
          showToast(response.message.toString(), center: true);
        }
      });
    }
  }

  resendOtp() {
    repositories.postApi(mapData: {
      "email": signUpController.emailController.text.trim().toString(),
    }, url: ApiUrls.resendOtpUrl, context: context, showResponse: true)
        .then((value) {
      CommonModel response = CommonModel.fromJson(jsonDecode(value));
      if (response.status == true) {
        showToast(response.message.toString(), center: true);
      } else {
        showToast(response.message.toString(), center: true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      addHeight(25),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Image.asset('assets/icons/cancel.png',
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Spacer(),
                            const AddText(
                              text: 'Two factor verification',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          addHeight(38),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: AddText(
                                  text: 'Check your email'.capitalizeFirst,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 26,
                                  height: 1.2,
                                ),
                              ),
                              addWidth(30),
                              Image.asset('assets/icons/mail.png',
                                height: 70,
                                width: 70,
                              )
                            ],
                          ),
                          addHeight(35),
                          AddText(
                            text: 'We\'ve sent an email to ${signUpController
                                .emailController.text
                                .trim()
                                .toString()} with a 6 digit code. This can take several minutes to receive. Please enter the code below or tap the link in the email.',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            height: 1.6,
                          ),
                          addHeight(20),
                          const AddText(
                            text: '6 digit code',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6B6B6B),
                          ),
                          addHeight(3),
                          TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(6),
                            ],
                            controller: otpController,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(15),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Enter text here',
                              hintStyle: GoogleFonts.poppins(
                                  color: const Color(0xFFC5C5C5),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400
                              ),

                              border: InputBorder.none,
                              focusedErrorBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(4)),
                                  borderSide: BorderSide(
                                      color: Color(0xFF6B6B6B))),
                              errorBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(4)),
                                  borderSide: BorderSide(
                                      color: Color(0xFF6B6B6B))),
                              focusedBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(4)),
                                  borderSide: BorderSide(
                                      color: Color(0xFF6B6B6B))),
                              disabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(4)),
                                borderSide: BorderSide(
                                    color: Color(0xFF6B6B6B)),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(4)),
                                borderSide: BorderSide(
                                    color: Color(0xFF6B6B6B)),
                              ),
                            ),
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter the OTP';
                              } else if (value.length != 6) {
                                return 'OTP must be 6 digits';
                              } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                                return 'OTP must contain only numbers';
                              }
                              return null;
                            },
                          ),
                          addHeight(37),
                          const AddText(
                            text: 'Didn\'t get the code?',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6B6B6B),
                          ),
                          addHeight(28),
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              resendOtp();
                            },
                            child: Text('Resend code',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF176397),
                                decoration: TextDecoration.underline,
                                decorationColor: const Color(0xFF176397),
                              ),
                            ),
                          ),
                        ],
                      ).paddingSymmetric(horizontal: 28),
                    ],
                  )
              ),
              Visibility(
                visible: MediaQuery
                    .of(context)
                    .viewInsets
                    .bottom == 0,
                child: CustomButton(
                  radius: 0,
                  title: 'Submit',
                  onPressed: () {
                    emailVerification();
                    // Get.toNamed(GenderDateBirthScreen.route);
                  },
                ),
              ),
              addHeight(40),
            ],
          ),
        ),
      ),
    );
  }
}