import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcdo/apiUrlls/api_url.dart';
import 'package:mcdo/models/common_model.dart';
import 'package:mcdo/models/get_profile_model.dart';
import 'package:mcdo/repo/repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../controller/profile_controller.dart';
import '../../routers/routers.dart';
import '../../wigets/addText.dart';
import '../../wigets/common_button.dart';
import '../authScreens/personal_details_screen.dart';
import 'package:intl/intl.dart';


class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  static String route = '/UpdateProfileScreen';

  @override
  State<UpdateProfileScreen> createState() =>
      _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {

  Rx<GetProfileModel> getProfileModel = GetProfileModel().obs;
  Repositories repositories = Repositories();
  final profileController = Get.put(ProfileController());
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  String gender = '';
  final formKey = GlobalKey<FormState>();

  Future updateProfile() async {
    if (formKey.currentState!.validate()) {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? cookie = pref.getString('token');
      repositories.postApi(
          url: ApiUrls.updateProfileUrl, showResponse: true, context: context,mapData: {
        'cookie': cookie.toString(),
        'first_name': firstNameController.text.trim().toString(),
        'last_name': lastNameController.text.trim().toString(),
        'email': emailController.text.trim().toString(),
        'gender': gender.toString(),
        'dob': dobController.text.trim().toString(),
      }).then((value) {
        CommonModel commonModel = CommonModel.fromJson(jsonDecode(value));
        if(commonModel.status == true){
          showToast(commonModel.message.toString(),center: true);
          profileController.getProfileRepo();
          Get.back();
        }else{
          showToast(commonModel.message.toString(),center: true);
          profileController.getProfileRepo();
        }
      },);
    }
  }
  @override
  void initState() {
    super.initState();
    profileController.getProfileRepo();
    if(profileController.getProfileModel.value.data != null){
      firstNameController.text = profileController.getProfileModel.value.data!.firstName ?? '';
      lastNameController.text = profileController.getProfileModel.value.data!.lastName ?? '';
      emailController.text = profileController.getProfileModel.value.data!.email ?? '';
      genderController.text = profileController.getProfileModel.value.data!.gender ?? '';
      dobController.text = profileController.getProfileModel.value.data!.dob ?? '';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
      ),
      backgroundColor: Colors.white,
      body:  SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              addHeight(70),
              Image.asset('assets/icons/my_m.png',
                height: 24,
                width: 80,
              ),
              addHeight(29),
              const AddText(text: 'Update Profile',
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
              addHeight(22),
              ...fieldWithName(
                title: 'First name',
                hintText: 'First name',
                controller: firstNameController,
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
              addHeight(10),
              ...fieldWithName(
                title: 'Last name',
                hintText: 'Last name',
                controller: lastNameController,
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
              addHeight(10),
              ...fieldWithName(
                title: 'Email',
                hintText: 'Enter email',
                controller: emailController,
                readOnly: true,
              ),
              addHeight(10),
              ...fieldWithName(
                  title: 'Gender',
                  hintText: 'select',
                  readOnly: true,
                  controller: genderController,
                  onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.white,
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(
                              16)),
                    ),
                    builder: (context) {
                      return Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Select Gender',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.black
                              ),
                            ),
                            const SizedBox(height: 10),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  title: Text("Male",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black
                                    ),
                                  ),
                                  leading: const Icon(Icons.male),
                                  onTap: () {
                                    genderController.text = 'Male';
                                    gender = 'male';
                                    setState(() {

                                    });
                                    Get.back();
                                  },
                                ),
                                ListTile(
                                  title: Text("Female",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black
                                    ),
                                  ),
                                  leading: const Icon(Icons.female),
                                  onTap: () {
                                    genderController.text = 'Female';
                                    gender = 'female';
                                    setState(() {

                                    });
                                    Get.back();
                                  },
                                ),
                                ListTile(
                                  title: Text("Other",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black
                                    ),
                                  ),
                                  leading: const Icon(Icons.transgender),
                                  onTap: () {
                                    genderController.text = 'Other';
                                    gender = 'other';
                                    setState(() {

                                    });
                                    Get.back();
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
                  suffixIcon: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        backgroundColor: Colors.white,
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(
                                  16)),
                        ),
                        builder: (context) {
                          return Container(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Select Gender',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.black
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      title: Text("Male",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Colors.black
                                        ),
                                      ),
                                      leading: const Icon(Icons.male),
                                      onTap: () {
                                        genderController.text = 'Male';
                                        gender = 'male';
                                        setState(() {

                                        });
                                        Get.back();
                                      },
                                    ),
                                    ListTile(
                                      title: Text("Female",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Colors.black
                                        ),
                                      ),
                                      leading: const Icon(Icons.female),
                                      onTap: () {
                                        genderController.text = 'Female';
                                        gender = 'female';
                                        setState(() {

                                        });
                                        Get.back();
                                      },
                                    ),
                                    ListTile(
                                      title: Text("Other",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Colors.black
                                        ),
                                      ),
                                      leading: const Icon(Icons.transgender),
                                      onTap: () {
                                        genderController.text = 'Other';
                                        gender = 'other';
                                        setState(() {

                                        });
                                        Get.back();
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: const Icon(Icons.keyboard_arrow_down_outlined),
                  ),
                  validator: (v) {
                  if (v!.trim().isEmpty) {
                    return "Please select your gender".tr;
                  }
                  return null;
                },

              ),
              ...fieldWithName(
                title: 'Date of birth',
                hintText: 'yyyy-mm-dd',
                controller: dobController,
                readOnly: true,
                onTap: () {
                  _showDatePicker(context);
                },
                validator: (v) {
                  if (v!.trim().isEmpty) {
                    return "Please select your date of birth".tr;
                  }
                  return null;
                },
              ),


            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: CustomButton(
          title: 'Update Profile',
          onPressed: () {
            updateProfile();
          },
          radius: 0,
        ),
      ),
    );
  }
  DateTime selectedDate = DateTime.now();
  String formattedDate1 = '';
  void _showDatePicker(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (_) =>
          Container(
            height: 300,
            color: Colors.white,
            child: Column(
              children: [
                // Done button
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.all(10),
                  child: CupertinoButton(
                    child: Text('Done',
                      style: GoogleFonts.poppins(
                          color: Colors.black
                      ),
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
                Expanded(
                  child: CupertinoTheme(
                    data:  const CupertinoThemeData(
                      brightness: Brightness.light,
                    ),
                    child: CupertinoDatePicker(
                      maximumDate: DateTime(2025, 12, 31),
                      initialDateTime: selectedDate,
                      mode: CupertinoDatePickerMode.date,
                      onDateTimeChanged: (DateTime newDate) {
                        setState(() {
                          selectedDate = newDate;
                          log('select ${selectedDate.toString()}');
                          formattedDate1 = DateFormat('yyyy/MM/dd').format(selectedDate);
                          log('select ${formattedDate1.toString()}');
                          dobController.text = formattedDate1.toString();
                        });
                      },

                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
