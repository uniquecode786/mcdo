import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routers/routers.dart';
import '../../wigets/addText.dart';
import '../../wigets/common_button.dart';
import 'artboard_screen1.dart';


class ArtboardScreen extends StatefulWidget {
  const ArtboardScreen({super.key});

  @override
  State<ArtboardScreen> createState() => _ArtboardScreenState();
}

class _ArtboardScreenState extends State<ArtboardScreen> {
  String selectCountry = 'Lebanon';
  String selectLanguage = 'English';
  List<String> countries = [

    "Algeria", "Bahrain", "Comoros", "Djibouti", "Egypt", "Iraq", "Jordan", "Kuwait",
    "Lebanon", "Libya", "Mauritania", "Morocco", "Oman", "Palestine", "Qatar",
    "Saudi Arabia", "Somalia", "Sudan", "Syria", "Tunisia", "United Arab Emirates", "Yemen",
    "India", "USA", "UK", "Canada", "Australia", "Germany", "France", "Japan", "South Korea",
    "China", "Brazil", "South Africa", "Nigeria", "Mexico", "Russia",
  ];
  List<String> language = [

    'English','Arabic'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          addHeight(60),
           Center(
             child: Image.asset('assets/icons/earth_icon.png',
             height: 230,
               width: 230,
             ),
           ),
           AddText(
              text:'Select region'.tr,
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.w700
           ),
          addHeight(35),
          selectionTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icons/country_icon.png',height: 20,width: 20,),
              ],
            ),
            title: selectCountry,
            subtitle: selectCountry,
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
                          'Select country',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.black
                          ),
                        ),
                        const SizedBox(height: 10),
                        Expanded(
                          child: ListView.builder(
                            itemCount: countries.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(countries[index]),
                                onTap: () {
                                  Navigator.pop(context);
                                  setState(() {
                                    selectCountry = countries[index];
                                  });
                                  print("Selected Country: ${countries[index]}");
                                },
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
            },
          ),
          addHeight(23),
          AddText(
              text:'Language'.tr,
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.w700
          ),
          addHeight(12),
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.white,
                context: context,
                isScrollControlled: false,
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
                          'Select language',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.black
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 150,
                          child: ListView.builder(
                            itemCount: language.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(language[index]),
                                onTap: () {
                                  Navigator.pop(context);
                                  setState(() {
                                    selectLanguage = language[index];
                                  });
                                  print("Selected language: ${language[index]}");
                                },
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
            },
            child: Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF707070)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/language_icon.png',height: 22,width: 25,),
                    ],
                  ),
                    const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          selectLanguage,
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios, size: 20),
                ],
              ),
            ),
          ),
          addHeight(41),
          CustomButton(
            radius: 4,
            title: 'Continue'.tr,
            onPressed: () {
               Get.toNamed(ArtboardScreen1.route);
            },
          )
        ],
      ).paddingSymmetric(horizontal: 16),
    );
  }
}
Widget selectionTile({
  required String title,
  String? subtitle,
  Widget? leading,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    behavior: HitTestBehavior.translucent,
    onTap: onTap,
    child: Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF707070)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leading != null) ...[
            leading,
            const SizedBox(width: 12),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                if (subtitle != null)
                  Text(
                    subtitle,
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      fontSize: 13
                    ),
                  ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 20),
        ],
      ),
    ),
  );
}