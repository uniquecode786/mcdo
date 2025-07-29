import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../apiUrlls/api_url.dart';
import '../models/get_profile_model.dart';
import '../repo/repository.dart';

class ProfileController extends GetxController{

  Rx<GetProfileModel> getProfileModel = GetProfileModel().obs;
  Repositories repositories = Repositories();
  Future getProfileRepo() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? cookie =  pref.getString('token');
    repositories.postApi(
        url: ApiUrls.getProfileUrl, showResponse: true,mapData: {
      'cookie' : cookie.toString(),
    }).then((
        value) {
      getProfileModel.value = GetProfileModel.fromJson(jsonDecode(value));
    },);
  }

}