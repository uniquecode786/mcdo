import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/signup_controller.dart';
import '../../routers/routers.dart';
import '../../wigets/addText.dart';
import '../../wigets/common_button.dart';
import '../../wigets/common_textfiled.dart';
import 'create_account_screen.dart';


class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({super.key});
  static String route = '/PersonalDetailsScreen';
  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {

  final signUpController = Get.put(SignUpController());
  final formKey = GlobalKey<FormState>();
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
                          child:  GestureDetector(
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
                            const AddText(text: 'Personal details',
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 26,
                              height: 1.2,
                            ),
                            addHeight(30),
                            const AddText(
                              text: 'Let us know how to properly address you. Please fill in your details.',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              height: 1.6,
                              color: Colors.black,
                            ),
                            addHeight(22),
                            ...fieldWithName(
                              title: 'First name',
                              hintText: 'First name',
                              controller: signUpController.nameController,
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'First name is required';
                                }
                                if (value.trim().length < 2) {
                                  return 'Must be at least 2 characters';
                                }
                                return null;
                              },
                            ),
                            ...fieldWithName(
                              title: 'Last name',
                              hintText: 'Last name',
                              controller: signUpController.lastNameController,
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'Last name is required';
                                }
                                if (value.trim().length < 2) {
                                  return 'Must be at least 2 characters';
                                }
                                return null;
                              },
                            ),
                            addHeight(30),
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
                              text: 'Required Information',
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
                  title: 'Continue'.tr,
                  onPressed: () {
                    if(formKey.currentState!.validate()) {
                      Get.toNamed(CreateAccountScreen.route);
                    }
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

List<Widget> fieldWithName({required String title,
  required String hintText,
  required TextEditingController controller,
  FormFieldValidator<String>? validator,
  final TextInputType? keyboardType,
  bool? readOnly,
  bool? obSecure,
  final List<TextInputFormatter>? inputFormatters,
  VoidCallback? onTap,
  Widget? suffixIcon,
  Widget? prefix}) {
  return [
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('*',style: TextStyle(
            color: Colors.red
        ),),
        Text(
          title.toString() ?? '',
          style: GoogleFonts.poppins(fontSize: 11,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF6B6B6B)),
        ),
      ],
    ),
    const SizedBox(
      height: 2,
    ),
    CommonTextField(
      onTap: onTap,
      hintText: hintText,
      inputFormatters: inputFormatters,
      obSecure: obSecure,
      controller: controller,
      validator: validator,
      readOnly: readOnly ?? false,
      suffixIcon: suffixIcon,
      keyboardType: keyboardType,
      prefix: prefix,
      fillColor: Colors.white,
    ),
    const SizedBox(
      height: 10,
    ),
  ];
}