import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../routers/routers.dart';
import 'edit_address_screen.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});
  static String route = '/AddressScreen';
  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  final List<Map<String, String>> addressList = [
    {
      "name": "MOKA’S home",
      "building": "The Grey Building",
      "floor": "2 - Right",
      "address": "Mosecof, cityyah, near TEC",
      "phone": "+961 3 785 380"
    },
    {
      "name": "MOKA’S home",
      "building": "The Grey Building",
      "floor": "2 - Right",
      "address": "Mosecof, cityyah, near TEC",
      "phone": "+961 3 785 380"
    }
  ];

  @override
  Widget build(BuildContext context) {
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
                  Text('Addresses',
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 40),
            child: SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFC732),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Get.toNamed(AddAddressScreen.route);
                },
                child:  Text(
                  'Add New Address',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                  fontSize: 16),
                ),
              ),
            ),
          ),
          addHeight(40),
          const Divider(height: 1,color: Color(0xFFEFEFF4)),
          Expanded(
            child: ListView.separated(
              itemCount: addressList.length,
              separatorBuilder: (_, __) => const Divider(height: 1,color: Color(0xFFEFEFF4),),
              itemBuilder: (context, index) {
                final item = addressList[index];
                return ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _rowText("Home:", item["name"]!),
                      _rowText("Building:", item["building"]!),
                      _rowText("Floor:", item["floor"]!),
                      _rowText("Address:", item["address"]!),
                      _rowText("Phone Number:", item["phone"]!),
                    ],
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 23, color: Color(0xFFD7E0E7)),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  onTap: (){
                    Get.toNamed(AddAddressScreen.route);
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _rowText(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF555555)
              ),
            ),
          ),
          const SizedBox(width: 6),
          Expanded(
            flex: 2,
            child: Text(
              value,
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF555555)
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}