import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../apiUrlls/api_url.dart';
import '../../controller/signup_controller.dart';
import '../../models/common_model.dart';
import '../../repo/repository.dart';
import '../../routers/routers.dart';
import '../../wigets/addText.dart';
import '../../wigets/common_button.dart';
import '../authScreens/personal_details_screen.dart';


class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});
  static String route = '/ChangePassword';
  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {

  final Repositories repositories = Repositories();
  final signUpController = Get.put(SignUpController());
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  changePasswordApi() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? cookie =  pref.getString('token');
    if (formKey.currentState!.validate()) {
      repositories.postApi(mapData: {
        'cookie' : cookie.toString(),
        "old_password":   oldPasswordController.text.trim().toString(),
        "new_password":   newPasswordController.text.trim().toString(),
      }, url: ApiUrls.changePasswordUrl, context: context,showResponse: true)
          .then((value) {
        CommonModel response = CommonModel.fromJson(jsonDecode(value));
        showToast(response.message.toString(),center: true);
        if (response.status == true) {
         Get.back();
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
                              child: AddText(text: 'Change password',
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 26,
                                height: 1.2,
                              ),
                            ),
                            addHeight(46),
                            ...fieldWithName(
                              title: 'Old password',
                              hintText: 'Enter old password',
                              controller: oldPasswordController,
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'Password is required';
                                }
                                if (value.length < 8) {
                                  return 'Must be at least 8 characters';
                                }
                                if (!RegExp(r'[A-Z]').hasMatch(value)) {
                                  return 'Must include at least one uppercase letter';
                                }
                                if (!RegExp(r'[a-z]').hasMatch(value)) {
                                  return 'Must include at least one lowercase letter';
                                }
                                if (!RegExp(r'[0-9]').hasMatch(value)) {
                                  return 'Must include at least one number';
                                }
                                return null;
                              }
                            ),
                            ...fieldWithName(
                                title: 'New password',
                                hintText: 'Enter new password',
                                controller: newPasswordController,
                                validator: (value) {
                                  if (value == null || value.trim().isEmpty) {
                                    return 'Password is required';
                                  }
                                  if (value.length < 8) {
                                    return 'Must be at least 8 characters';
                                  }
                                  if (!RegExp(r'[A-Z]').hasMatch(value)) {
                                    return 'Must include at least one uppercase letter';
                                  }
                                  if (!RegExp(r'[a-z]').hasMatch(value)) {
                                    return 'Must include at least one lowercase letter';
                                  }
                                  if (!RegExp(r'[0-9]').hasMatch(value)) {
                                    return 'Must include at least one number';
                                  }
                                  return null;
                                },
                                obSecure: obscureText1,
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      obscureText1 = !obscureText1;
                                    });
                                  },
                                  child:
                                  Column(
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
                        ).paddingSymmetric(horizontal: 30),
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
                  title: 'Change password'.tr,
                  onPressed: () {
                    changePasswordApi();
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
