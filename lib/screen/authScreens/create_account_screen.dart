import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdo/screen/authScreens/personal_details_screen.dart';
import 'package:mcdo/screen/authScreens/two_factor_validation_screen.dart';

import '../../apiUrlls/api_url.dart';
import '../../controller/signup_controller.dart';
import '../../models/common_model.dart';
import '../../repo/repository.dart';
import '../../routers/routers.dart';
import '../../wigets/addText.dart';
import '../../wigets/common_button.dart';


class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});
  static String route = '/CreateAccountScreen';
  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {

  final Repositories repositories = Repositories();
  final signUpController = Get.put(SignUpController());
  final formKey = GlobalKey<FormState>();
  addNameApi() {
    if (formKey.currentState!.validate()) {
      repositories.postApi(mapData: {
        "first_name": signUpController.nameController.text.trim().toString(),
        "last_name":  signUpController.lastNameController.text.trim().toString(),
        "email":      signUpController.emailController.text.trim().toString(),
        "password":   signUpController.passwordController.text.trim().toString(),
        "is_over_16_and_agreed": "1",
        "receive_news_email": "1",
        "receive_news_sms": "1"
      }, url: ApiUrls.signUpUrl, context: context,showResponse: true)
          .then((value) {
        CommonModel response = CommonModel.fromJson(jsonDecode(value));
        showToast(response.message.toString(),center: true);
        if (response.status == true) {
          Get.toNamed(TwoFactorValidationScreen.route);
          // signUpController.nameController.clear();
          // signUpController.lastNameController.clear();
          // signUpController.emailController.clear();
          // signUpController.passwordController.clear();
        }else{
          showToast(response.message.toString(),center: true);
        }
      });
    }
  }
  var obscureText1 = true;
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
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          addHeight(40),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: GestureDetector(
                                onTap: (){
                                  Get.back();
                                },
                                child: Image.asset('assets/icons/arrow_circle.png',
                                  height: 40,
                                  width: 50,
                                )
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              addHeight(35),
                              Image.asset('assets/icons/logo.png',
                                height: 40,
                                width: 80,
                              ),
                              addHeight(30),
                              const FittedBox(
                                child: AddText(text: 'Create your account',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 26,
                                  height: 1.2,
                                ),
                              ),
                              addHeight(46),
                              const AddText(
                                text: 'Please fill in your login details.',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                height: 1.6,
                                color: Colors.black,
                              ),
                              addHeight(24),
                              ...fieldWithName(
                                title: 'Email',
                                hintText: 'Enter email',
                                controller: signUpController.emailController,
                                // validator: (value) {
                                //   if (value == null || value.trim().isEmpty) {
                                //     return 'Email is required';
                                //   }
                                //   final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                                //   if (!regex.hasMatch(value.trim())) {
                                //     return 'Enter a valid email address';
                                //   }
                                //   return null;
                                // },
                              ),
                              ...fieldWithName(
                                  title: 'Password',
                                  hintText: 'Enter password',
                                  controller: signUpController.passwordController,
                                  // validator: (value) {
                                  //   if (value == null || value.trim().isEmpty) {
                                  //     return 'Password is required';
                                  //   }
                                  //   if (value.length < 8) {
                                  //     return 'Must be at least 8 characters';
                                  //   }
                                  //   if (!RegExp(r'[A-Z]').hasMatch(value)) {
                                  //     return 'Must include at least one uppercase letter';
                                  //   }
                                  //   if (!RegExp(r'[a-z]').hasMatch(value)) {
                                  //     return 'Must include at least one lowercase letter';
                                  //   }
                                  //   if (!RegExp(r'[0-9]').hasMatch(value)) {
                                  //     return 'Must include at least one number';
                                  //   }
                                  //   return null;
                                  // },
                                  obSecure: obscureText1,
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        obscureText1 = !obscureText1;
                                      });
                                    },
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        obscureText1
                                            ?  Image.asset('assets/icons/hide.png',height: 16,width: 16,) :
                                        Image.asset('assets/icons/eye.png',height: 16,width: 16),
                                      ],
                                    ),
                                  )
                              ),
                              addHeight(9),
                              const AddText(
                                text: 'Password must be min 8 characters',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF6B6B6B),
                              ),
                              addHeight(11),
                              const AddText(
                                text: 'Include upper and lower case characters',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF6B6B6B),
                              ),
                              addHeight(11),
                              const AddText(
                                text: 'Include one number',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF6B6B6B),
                              ),
                              addHeight(37),
                            ],
                          ).paddingSymmetric(horizontal: 16),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset('assets/icons/star.png',
                                height: 20,
                                width: 10,
                              ),
                              addWidth(5),
                              const AddText(
                                text: 'Required information',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF6B6B6B),
                              )
                            ],
                          ).paddingSymmetric(horizontal: 16),
                        ],
                      ),
                    )
                ),
                Visibility(
                  visible: MediaQuery.of(context).viewInsets.bottom == 0,
                  child: CustomButton(
                    radius: 0,
                    title: 'Create Account'.tr,
                    onPressed: () {
                      // addNameApi();
                      Get.toNamed(TwoFactorValidationScreen.route);
                    },
                  ),
                ),
                addHeight(40),
              ],
            ),
          ),
        ));
  }
}