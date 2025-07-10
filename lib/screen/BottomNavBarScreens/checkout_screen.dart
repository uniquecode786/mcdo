import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcdo/screen/more_screens/AddressScreen/edit_address_screen.dart';

import '../../routers/routers.dart';
import '../../wigets/addText.dart';
import '../more_screens/AddressScreen/delivery_location_screen.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});
  static String route = '/CheckoutScreen';
  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  String paymentMethod = 'cod';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFFf5f5f5),
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
        title: Padding(
          padding: const EdgeInsets.only(left: 73.0),
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
              Text('CHECKOUT',
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
        ),
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(0.5),
        elevation: 5,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
              addHeight(30),
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
                                    "MOKA’s Home",
                                    style: GoogleFonts.poppins(fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  addHeight(6),
                                  Text(
                                    "Baabda, Haret Hureik, Moawad St.\nMobile number: +9613785380",
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
                                Get.toNamed(AddAddressScreen.route);
                              },
                              child: Text(
                                "Change",
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
                Container(
                  width: Get.width,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 8,
                        spreadRadius: 2,
                        offset: const Offset(0, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AddText(
                        text: 'Pay With',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF333333),
                      ),
                      addHeight(22),
                      paymentOption(
                        method: 'cod',
                        icon: 'cash',
                        text: 'Cash On Delivery',
                        selected: selectedMethod == 'cod',
                        isEnabled: true,
                      ),
                      addHeight(25),
                      paymentOption(
                        method: 'card',
                        icon:'credit',
                        text: 'Credit Card',
                        selected: selectedMethod == 'card',
                        isEnabled: false,
                      ),
                      addHeight(23),
                    ],

                  ),
                ),
               addHeight(20),

              ],
            ).paddingSymmetric(horizontal: 13),
            Container(
              width: Get.width,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: const Offset(0, 4), // Shadow position
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AddText(
                    text: 'Payment Summary',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF333333),
                  ),
                  addHeight(13),
                  const Divider(
                    color: Color(0xFFEAEAEA),
                    height: 1,
                  ),
                  addHeight(23),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AddText(
                        text: 'Basket Total',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF333333),
                      ),
                      AddText(
                        text: 'LBP 6,500,000',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF333333),
                      ),

                    ],
                  ),
                  addHeight(14),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: AddText(
                          text: 'LBP 150,000 off on your next order',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xFFFFC732),
                        ),
                      ),
                      AddText(
                        text: '- LBP 150,000',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFFFFC732),
                      ),

                    ],
                  ),
                  addHeight(28),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AddText(
                        text: 'Delivery Fee',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF333333),
                      ),
                      AddText(
                        text: 'LBP 150,000',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF333333),
                      ),

                    ],
                  ),
                  addHeight(26),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AddText(
                        text: 'Total amount',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xFF333333),
                      ),
                      AddText(
                        text: 'LBP 6,350,000',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xFF333333),
                      ),

                    ],
                  ),
                  addHeight(23),
                ],

              ),
            ),
            addHeight(23),
          ],
        ),
      ),

      // Only the Button at Bottom
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, -2),
              blurRadius: 10,
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow[700],
            minimumSize: const Size.fromHeight(50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text(
            "PLACE ORDER",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    );
  }

  Widget rowItem(String left, String right,
      {bool isBold = false, Color? color, double fontSize = 14}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(left,
            style: GoogleFonts.poppins(fontSize: 15,
                fontWeight: FontWeight.w600,
              color: color ?? Colors.black,
            ),),
        ),
        Text(right,
            style: GoogleFonts.poppins(fontSize: 15,
                fontWeight: FontWeight.w600,
              color: color ?? Colors.black,
            ),
          ),
      ],
    );
  }
  String selectedMethod = 'cod';
Widget paymentOption({
  required String method,
  required String icon,
  required String text,
  required bool selected,
  required bool isEnabled,
}) {
  return Opacity(
    opacity: isEnabled ? 1.0 : 0.3,
    child: GestureDetector(
      onTap: isEnabled
          ? () {
        setState(() {
          selectedMethod = method;
        });
      }
          : null,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:  selected
                  ?const Color(0xFFFFC732) :
                  Colors.transparent,
              border: Border.all(
                  color: selected
                      ?Colors.transparent
                      : const Color(0xFFE02020),
                  width: 2),
            ),
            child: selected
                ? const Icon(Icons.check,size: 15,color: Colors.white,)
                : const Icon(Icons.circle_outlined,
                color: Colors.transparent, size: 15),
          ),
         addWidth(30),
         Image.asset('assets/icons/$icon.png',
         height: isEnabled ? 15 : 23,
           width:  isEnabled ?  26 : 26,
         ),
          addWidth(6),
          Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF333333),
            ),
          ),
        ],
      ),
    ),
  );
}
}