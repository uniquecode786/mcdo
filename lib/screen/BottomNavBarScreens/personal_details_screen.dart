import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/profile_controller.dart';
import '../../routers/routers.dart';
import '../../wigets/addText.dart';
import '../../wigets/common_button.dart';
import '../../wigets/helpers.dart';
import '../more_screens/update_profile_screen.dart';


class PersonalDetailsScreenEdit extends StatefulWidget {
  const PersonalDetailsScreenEdit({super.key});

  static String route = '/PersonalDetailsScreenEdit';

  @override
  State<PersonalDetailsScreenEdit> createState() =>
      _PersonalDetailsScreenEditState();
}

class _PersonalDetailsScreenEditState extends State<PersonalDetailsScreenEdit> {

  final profileController = Get.put(ProfileController());
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
      body: Obx(() {
        return  profileController.getProfileModel.value.data != null ?
          SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
              const AddText(text: 'Personal Details',
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
              addHeight(22),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const AddText(text: 'First name',
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Color(0xFF6B6B6B),
                  ),
                  addHeight(6),
                   AddText(text:  profileController.getProfileModel.value.data!.firstName ?? '',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ],
              ),
              addHeight(22),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const AddText(text: 'Last name',
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Color(0xFF6B6B6B),
                  ),
                  addHeight(6),
                   AddText(text: profileController.getProfileModel.value.data!.lastName ?? '',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ],
              ),
              addHeight(22),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const AddText(text: 'Email',
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Color(0xFF6B6B6B),
                  ),
                  addHeight(6),
                   AddText(text:  profileController.getProfileModel.value.data!.email ?? '',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ],
              ),
              addHeight(22),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   AddText(text: 'Gender',
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Color(0xFF6B6B6B),
                  ),
                  addHeight(6),
                   AddText(text: profileController.getProfileModel.value.data!.gender ?? 'not selected',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ],
              ),
              addHeight(22),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const AddText(text: 'Date of birth',
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Color(0xFF6B6B6B),
                  ),
                  addHeight(6),
                   AddText(text:  profileController.getProfileModel.value.data!.dob ?? '',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ],
              ),


            ],
          ),
        ) : const Center(child: LoadingAnimation());
      }),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: CustomButton(
          title: 'Edit Profile',
          onPressed: () {
            Get.toNamed(UpdateProfileScreen.route);
          },
          radius: 0,
        ),
      ),
    );
  }
}
