import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
                              onTap: (){
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
                            fontSize: 16,
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
                            const Expanded(
                              child: AddText(text: 'Check your email',
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 31,
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
                        const AddText(
                          text: 'We\'ve sent an email to fatima.srour11@icloud.com with a 6 digit code. This can take several minutes to receive. Please enter the code below or tap the link in the email.',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          height: 1.4,
                        ),
                        addHeight(20),
                        const AddText(
                          text: '6 digit code',
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6B6B6B),
                        ),
                        addHeight(3),
                        TextFormField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly, // Only allow digits
                            LengthLimitingTextInputFormatter(6),    // Limit length to 6
                          ],
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Enter text here',
                            hintStyle: GoogleFonts.poppins(
                                color: const Color(0xFFC5C5C5),
                                fontSize: 13,
                                fontWeight: FontWeight.w400
                            ),

                            border: InputBorder.none,
                            focusedErrorBorder:  const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(4)), borderSide: BorderSide(color: Color(0xFF6B6B6B))),
                            errorBorder:  const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(4)), borderSide: BorderSide(color: Color(0xFF6B6B6B))),
                            focusedBorder:  const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(4)), borderSide: BorderSide(color:Color(0xFF6B6B6B))),
                            disabledBorder:  const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(color:Color(0xFF6B6B6B)),
                            ),
                            enabledBorder:  const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(color: Color(0xFF6B6B6B)),
                            ),
                          ),
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                        addHeight(37),
                        const AddText(
                          text: 'Didn\'t get the code?',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6B6B6B),
                        ),
                        addHeight(28),
                        Text('Resend code',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF176397),
                          decoration: TextDecoration.underline,
                          decorationColor: const Color(0xFF176397),
                        ),
                        ),
                      ],
                    ).paddingSymmetric(horizontal: 28),
                  ],
                )
            ),
            Visibility(
              visible: MediaQuery.of(context).viewInsets.bottom == 0,
              child: CustomButton(
                radius: 0,
                title: 'submit'.tr,
                onPressed: () {
                  Get.toNamed(GenderDateBirthScreen.route);
                },
              ),
            ),
            addHeight(40),
          ],
        ),
      ),
    );
  }
}
