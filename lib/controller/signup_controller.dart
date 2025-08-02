import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mcdo/models/login_model.dart';

class SignUpController extends GetxController{
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginModal loginModal = LoginModal();
  String code = '+91';

}