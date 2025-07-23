import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcdo/wigets/addText.dart';
import '../../routers/routers.dart';
import '../../wigets/common_button.dart';
import 'checkout_screen.dart';

class BasketScreen extends StatefulWidget {
  const BasketScreen({super.key});
  static String route = '/BasketScreen';
  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {

  int _ticketCount = 1;

  void _toggleCounter() {
    setState(() {
      _ticketCount = 1;
    });
  }

  void _increment() {
    setState(() {
      _ticketCount++;
    });
  }

  void _decrement() {
    setState(() {
      if (_ticketCount > 1) {
        _ticketCount--;
      }
    });
  }
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
              Text('BASKET',
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
          children: [
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Container(
                   height: 50,
                   decoration: const BoxDecoration(
                       image: DecorationImage(
                         image: AssetImage('assets/icons/basket_map.png',),
                       )
                   ),
                   padding: const EdgeInsets.all(9),
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Image.asset('assets/icons/location_gray.png',
                         height: 36,
                         width: 36,
                       ),
                       addWidth(10),
                       const AddText(
                         text: 'Baabda, Haret Hureik, Moawad Street',
                         fontWeight: FontWeight.w400,
                         fontSize: 12,
                         color: Color(0xFF4D4A49),
                       )
                     ],
                   ),
                 ),
                 addHeight(5),
                 ListView.builder(
                   shrinkWrap: true,
                   physics: const NeverScrollableScrollPhysics(),
                   itemCount: 2,
                   padding: EdgeInsets.zero,
                   itemBuilder: (context, index) {
                     return Card(
                       color: Colors.white,
                       elevation: 0,
                       margin: const EdgeInsets.symmetric(vertical: 5),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                       child: Stack(
                         children: [
                           Container(
                             color: Colors.white,
                           ),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Expanded(
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Row(
                                           children: [
                                             Text(
                                               '1 x ',
                                               style: GoogleFonts.poppins(
                                                 fontWeight: FontWeight.w400,
                                                 fontSize: 12,
                                                 color: const Color(0xFFE02020),
                                               ),
                                             ),
                                             Text(
                                               'Fillet Fish',
                                               style: GoogleFonts.poppins(
                                                 fontWeight: FontWeight.w400,
                                                 fontSize: 12,
                                                 color: Colors.black,
                                               ),
                                             ),
                                           ],
                                         ),
                                         addHeight(9),
                                         Text(
                                           'Red Hot Twister Sandwich +\nRizo + Coleslaw + Drink.',
                                           style: GoogleFonts.poppins(
                                               fontSize: 12,
                                               fontWeight: FontWeight.w400,
                                               color: Colors.black),
                                         ),
                                         const SizedBox(height: 6),

                                       ],
                                     ).paddingSymmetric(horizontal: 14,vertical: 14),
                                   ),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.end,
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [
                                       Align(
                                           alignment: Alignment.topRight,
                                           child: Image.asset('assets/icons/fav.png',
                                             height: 30,
                                             width: 30,
                                           )),
                                       addHeight(20),
                                       Padding(
                                         padding: const EdgeInsets.only(right: 20.0),
                                         child: Image.asset('assets/icons/burger_img.png',
                                           height: 50,
                                           width: 75,
                                         ),
                                       ),
                                       addHeight(30),
                                     ],
                                   ),
                                 ],
                               ),
                               addHeight(30),
                             ],
                           ),
                           Positioned(
                             bottom: 0,
                             left: 0,
                             child:  Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 const SizedBox(height: 10),
                                 const SizedBox(height: 10),
                                 Text(
                                   '470,000 LBP',
                                   style: GoogleFonts.poppins(
                                     fontWeight: FontWeight.w400,
                                     fontSize: 12,
                                     height: 1.6,),
                                 )
                               ],
                             ).paddingSymmetric(horizontal: 14,vertical: 10),
                           ),
                           Positioned(
                             bottom: 0,
                             right: 0,
                             child:  GestureDetector(
                               onTap: _toggleCounter,
                               child: Container(
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(6.0),
                                 ),
                                 child: Row(
                                   mainAxisSize: MainAxisSize.min,
                                   children: [
                                     InkWell(
                                       onTap: _decrement,
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                                         child: Container(
                                           height: 32,
                                           width: 32,
                                           decoration: BoxDecoration(
                                             color: const Color(0xFFE1E1E1),
                                             borderRadius: BorderRadius.circular(2),
                                           ),
                                           child: const Icon(Icons.remove, color: Colors.white),
                                         ),
                                       ),
                                     ),
                                     addWidth(4),
                                     Text(
                                       _ticketCount.toString(),
                                       style: GoogleFonts.poppins(
                                         fontWeight: FontWeight.w500,
                                         fontSize: 14,
                                         color: Colors.black,
                                       ),
                                     ),
                                     addWidth(4),
                                     InkWell(
                                       onTap: _increment,
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                                         child: Container(
                                           height: 32,
                                           width: 32,
                                           decoration: BoxDecoration(
                                             color: const Color(0xFFFFC732),
                                             borderRadius: BorderRadius.circular(2),
                                           ),
                                           child: const Icon(Icons.add, color: Colors.white),
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                     );
                   },
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
                         text: 'Special request',
                         fontWeight: FontWeight.w400,
                         fontSize: 12,
                         color: Color(0xFF333333),
                       ),
                       addHeight(13),
                       const Divider(
                         color: Color(0xFFEAEAEA),
                         height: 1,
                       ),
                       addHeight(23),
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Image.asset('assets/icons/notes_bg.png',
                             height: 15,
                             width: 15,
                           ),
                           addWidth(10),
                           const AddText(
                             text: 'write your special request here',
                             fontWeight: FontWeight.w400,
                             fontSize: 12,
                             color: Color(0xFF999999),
                           ),
                         ],
                       ),
                       addHeight(50),
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
                       const Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           AddText(
                             text: "Save on your order",
                             fontWeight: FontWeight.w400,
                             fontSize: 12,
                           ),
                           AddText(
                             text: "Add Voucher",
                             fontSize: 12,
                             fontWeight: FontWeight.w500,
                             color: Color(0xFFFFC732),
                           ),
                         ],
                       ),
                       addHeight(22),
                       TextField(
                         readOnly: false, // prevent editing
                         decoration: InputDecoration(
                           contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                           prefixIcon: Column(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Image.asset('assets/icons/save_order.png',
                                 height: 16,
                                 width: 16,
                               ),
                             ],
                           ),
                           suffixIcon: const Padding(
                             padding: EdgeInsets.only(right: 12),
                             child:   AddText(
                               text: "Apply",
                               fontSize: 12,
                               fontWeight: FontWeight.w400,
                               color: Color(0xFFFFC732),
                             ),
                           ),
                           suffixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
                           hintText: 'LBP 150,000 off on your next order',
                           hintStyle: GoogleFonts.poppins(
                               color: const Color(0xFF666666),
                               fontSize: 12,
                               fontWeight: FontWeight.w400
                           ),
                           enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10),
                             borderSide: const BorderSide(color: Color(0xFFEAEAEA)),
                           ),
                           focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10),
                             borderSide: const BorderSide(color: Color(0xFFEAEAEA)),
                           ),
                           filled: true,
                           fillColor: Colors.white,
                         ),
                       )
                     ],
                   ),
                 ),
               ],
             ).paddingSymmetric(horizontal: 12,vertical: 10),
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
                    text: 'Payment Summary',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
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
                        fontSize: 12,
                        color: Color(0xFF333333),
                      ),
                      AddText(
                        text: 'LBP 6,500,000',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFF333333),
                      ),

                    ],
                  ),
                  addHeight(23),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 45,
                          child: CustomOutlinedButton(
                            radius: 8,
                            title: 'Add Items',
                            textColor: Colors.black,
                            onPressed: (){
                               Get.back();
                            },
                          ),
                        ),
                      ),
                      addWidth(20),
                      Expanded(
                        child: SizedBox(
                          height: 45,
                          child: CustomButton(
                            radius: 8,
                            title: 'Checkout',
                            onPressed: (){
                               Get.toNamed(CheckoutScreen.route);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  addHeight(10),
                ],
              ),
            ),
            addHeight(65),
            Center(
              child: Image.asset('assets/icons/app_logos.png',
                height: 40,
                width: 110,
              ),
            ),
            addHeight(65),
          ],
        ),
      ),
    );
  }
}
