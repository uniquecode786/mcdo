import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mcdo/wigets/common_button.dart';
import '../../../routers/routers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'delivery_location_screen.dart';


class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({super.key});
  static String route = '/AddAddressScreen';

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {

  String countryCode = '+101';
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/common_back.png',
                height: 40,
                width: 40,
              )
            ],
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/home_more.png',
                    height: 20,
                    width: 20,
                    color: const Color(0xFFEAAD21),
                  ),
                  addWidth(10),
                  Text('add Address',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black
                    ),),
                  addWidth(10),
                  Image.asset('assets/icons/home_more.png',
                    height: 20,
                    width: 20,
                    color: const Color(0xFFEAAD21),
                  ),
                ],
              ),
            )
          ],
        ),
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(0.5),
        elevation: 5,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
           addHeight(20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xFFD3D3D3)
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(8),
                  topRight: Radius.circular(8)),
                  child: Image.asset('assets/icons/map.png',
                  height: 170,
                  width: Get.width,
                    fit: BoxFit.cover,
                  ),
                ),
                addHeight(10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Image.asset('assets/icons/location_mark.png',
                         height: 36,
                         width: 36,
                       ),
                        addWidth(8),
                         Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Locate Your Address *",
                                style: GoogleFonts.poppins(fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              addHeight(6),
                              Text(
                                "Add your location on map, so our drivers can easily deliver your orders",
                                style: GoogleFonts.poppins(fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF666666)
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.toNamed(DeliveryTrackingScreen.route);
                              },
                          child: Text(
                            "Locate",
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFFFC732)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  addHeight(26),
                ],
              ),
            ),

            addHeight(20),
            Text('Give this address a lablel so you can easily choose between them (e.g. Parent’s Home)',
            style: GoogleFonts.poppins(
              color: const Color(0xFF999999),
              fontSize: 12,
              fontWeight: FontWeight.w400
            ),
            ),
            addHeight(20),
            Column(
              children: [
                buildInputField("Home*", hint: "MOKA'S Home"),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                       flex: 3,
                        child: buildInputField("Building*", hint: "Enter building")),
                    addWidth(10),
                    Expanded(child: buildInputField("Floor*", hint: "Enter floor"),
                    ),
                  ],
                ),
                buildInputField("Address Details*", hint: "Enter address details"),
                buildPhoneInput(),
              ],
            ),
            addHeight(20),
      
           CustomButton(title: 'Save Updates', radius: 8,
           backgroundColor: Color(0xFFFFC732),onPressed: (){},),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color(0xFFFFC732),
            side: const BorderSide(color: Color(0xFFFFC732)),
            minimumSize: const Size.fromHeight(50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            showDeleteAddressDialog(context);
          },
          child: Text("Delete",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.black
          ),
          ),
        ),
      ),
    );
  }

  Widget buildInputField(String label, {String? hint}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          filled: true,
          hintStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: const Color(0xFF999999)
          ),
          labelStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: const Color(0xFF999999)
          ),
          fillColor: Colors.white,
          border: InputBorder.none,
          focusedErrorBorder:  const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Color(0xFFEFEFF4))),
          errorBorder:   const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Color(0xFFEFEFF4))),
          focusedBorder:  const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Color(0xFFEFEFF4))),
          disabledBorder:  const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Color(0xFFEFEFF4))),
          enabledBorder:   const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Color(0xFFEFEFF4))),
        ),
      ),
    );
  }

  Widget buildPhoneInput() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: IntlPhoneField(
        controller: phoneController,
        disableLengthCheck: true,
        dropdownIconPosition: IconPosition.trailing,
        flagsButtonPadding: const EdgeInsets.only(left: 10),
        decoration: InputDecoration(
          hintText: 'Type your phone number',
          hintStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w400, fontSize: 14, color: const Color(0xff7E8CA0)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: const Color(0xFF505050).withOpacity(0.22),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: const Color(0xFF505050).withOpacity(0.22),
            ),
          ),
        ),
        initialCountryCode:  countryCode.toString(),
        languageCode:  countryCode.toString(),
        onCountryChanged: (country) {
          countryCode = '+${country.dialCode}';
          log("Country Code Updated: $countryCode");
          log("Country Code: $countryCode");

        },
        onChanged: (ee) {
          log("Country Code Updatedrr: $ee");

        },
        validator: (value) {
          if (value == null || phoneController.text.isEmpty) {
            return 'Please enter a phone number';
          }
          return null;
        },
      ),
    );
  }
}

void showDeleteAddressDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Cross icon in circle
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.yellow.shade700, width: 2),
                ),
                child: Icon(Icons.close, color: Colors.yellow.shade700, size: 30),
              ),
              const SizedBox(height: 20),
               Text(
                "Are you sure you want to delete this address from the addresses list?",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),
              ),
              const SizedBox(height: 25),

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  GestureDetector(
                    onTap:  () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        border: Border.all(color:const Color(0xFFFFC732),)
                      ),
                      child: const Center(
                        child:  Text("Cancel"),
                      ),
                    ),
                  ),

                  // Delete button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFC732),
                      foregroundColor: Colors.black,
                      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      // handle deletion here
                    },
                    child: const Text("Delete"),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}
