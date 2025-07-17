// import 'package:flutter/material.dart';
//
//
// class Tesc extends StatefulWidget {
//   const Tesc({super.key});
//
//   @override
//   State<Tesc> createState() => _TescState();
// }
//
// class _TescState extends State<Tesc> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF5F5F5),
//       body: DefaultTabController(
//         length: 5,
//         child: Stack(
//           children: [
//             CustomScrollView(
//               slivers: [
//                 SliverAppBar(
//                   expandedHeight: 220,
//                   pinned: true,
//                   backgroundColor: Colors.transparent,
//                   elevation: 0,
//                   automaticallyImplyLeading: false,
//                   flexibleSpace: FlexibleSpaceBar(
//                     background: Image.asset('assets/icons/food_bg.png',
//                       height: 220,
//                       width: Get.width,
//                       fit: BoxFit.fill ,
//                     ),
//                   ),
//                 ),
//
//                 SliverToBoxAdapter(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 18.0),
//                     child: Column(
//                       children: [
//                         Container(
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(8),
//                             // boxShadow: [
//                             //   BoxShadow(
//                             //     color: const Color(0xFF0A0D120A).withOpacity(0.1),
//                             //     offset: const Offset(0.0, 2.0),
//                             //     blurRadius: 5,
//                             //   ),
//                             // ],
//                           ),
//                           padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Column(
//                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       Text('Delivery Fee',
//                                         style: GoogleFonts.poppins(
//                                             fontWeight: FontWeight.w400,
//                                             fontSize: 12,
//                                             color: const Color(0xFF888888)
//                                         ),),
//                                       Text('LBP 100,000',
//                                         style: GoogleFonts.poppins(
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 11,
//                                             color: Colors.black
//                                         ),),
//                                     ],
//                                   ),
//                                   Container(
//                                     width: 1,
//                                     height: 30,
//                                     padding: const EdgeInsets.symmetric(vertical: 6),
//                                     color: const Color(0xFFEAEAEA),
//                                   ),
//                                   Column(
//                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       Text('Delivery Time',
//                                         style: GoogleFonts.poppins(
//                                             fontWeight: FontWeight.w400,
//                                             fontSize: 12,
//                                             color: const Color(0xFF888888)
//                                         ),),
//                                       Text('30 mins',
//                                         style: GoogleFonts.poppins(
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 11,
//                                             color: Colors.black
//                                         ),),
//                                     ],
//                                   ),
//                                   Container(
//                                     width: 1,
//                                     height: 30,
//                                     padding: const EdgeInsets.symmetric(vertical: 6),
//                                     color: const Color(0xFFEAEAEA),
//                                   ),
//                                   Column(
//                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       Text('Discounts',
//                                         style: GoogleFonts.poppins(
//                                             fontWeight: FontWeight.w400,
//                                             fontSize: 12,
//                                             color: const Color(0xFF888888)
//                                         ),),
//                                       Text('Above 2M',
//                                         style: GoogleFonts.poppins(
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 11,
//                                             color: Colors.black
//                                         ),),
//                                     ],
//                                   ),
//
//                                 ],
//                               ),
//                               addHeight(10),
//                               const Divider(
//                                 color: Color(0xFFEAEAEA),
//                                 thickness: 1,
//                               ),
//                               addHeight(10),
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Column(
//                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       Text('Minimum Order',
//                                         style: GoogleFonts.poppins(
//                                             fontWeight: FontWeight.w400,
//                                             fontSize: 12,
//                                             color: const Color(0xFF888888)
//                                         ),),
//                                       Text('LBP 550,000',
//                                         style: GoogleFonts.poppins(
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 11,
//                                             color: Colors.black
//                                         ),),
//                                     ],
//                                   ),
//                                   addWidth(8),
//                                   Container(
//                                     width: 1,
//                                     height: 30,
//                                     padding: const EdgeInsets.symmetric(vertical: 6),
//                                     color: const Color(0xFFEAEAEA),
//                                   ),
//                                   addWidth(19),
//                                   Column(
//                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       Text('Opening Hours',
//                                         style: GoogleFonts.poppins(
//                                             fontWeight: FontWeight.w400,
//                                             fontSize: 12,
//                                             color: const Color(0xFF888888)
//                                         ),),
//                                       Text('12:00 PM - 2:00 AM',
//                                         style: GoogleFonts.poppins(
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 11,
//                                             color: Colors.black
//                                         ),),
//                                     ],
//                                   ),
//                                   addWidth(8),
//                                   // Container(
//                                   //   width: 1,
//                                   //   height: 30,
//                                   //   padding: const EdgeInsets.symmetric(vertical: 6),
//                                   //   color: const Color(0xFFEAEAEA),
//                                   // ),
//
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(8),
//                             // boxShadow: [
//                             //   BoxShadow(
//                             //     color: const Color(0xFF0A0D120A).withOpacity(0.1),
//                             //     offset: const Offset(0.0, 2.0),
//                             //     blurRadius: 5,
//                             //   ),
//                             // ],
//                           ),
//                           padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Image.asset('assets/icons/bike.png',
//                                     height: 18,
//                                     width: 18,
//                                   ),
//                                   addWidth(5),
//                                   Text('Delivery'.toUpperCase(),
//                                     style: GoogleFonts.poppins(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w600,
//                                         color: const Color(0xFFD42216)
//                                     ),),
//                                 ],
//                               ),
//                               Container(
//                                 width: 1,
//                                 height: 18,
//                                 padding: const EdgeInsets.symmetric(vertical: 6),
//                                 color: const Color(0xFFEAEAEA),
//                               ),
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Image.asset('assets/icons/car.png',
//                                     height: 18,
//                                     width: 18,
//                                   ),
//                                   addWidth(5),
//                                   Text('Pickup'.toUpperCase(),
//                                     style: GoogleFonts.poppins(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w600,
//                                         color: const Color(0xFFD42216)
//                                     ),),
//                                 ],
//                               ),
//                               Container(
//                                 width: 1,
//                                 height: 18,
//                                 padding: const EdgeInsets.symmetric(vertical: 6),
//                                 color: const Color(0xFFEAEAEA),
//                               ),
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Image.asset('assets/icons/dine_in.png',
//                                     height: 18,
//                                     width: 18,
//                                   ),
//                                   addWidth(5),
//                                   Text('Dine-in'.toUpperCase(),
//                                     style: GoogleFonts.poppins(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w600,
//                                         color: const Color(0xFFD42216)
//                                     ),
//                                   ),
//                                 ],
//                               ),
//
//                             ],
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SliverPersistentHeader(
//                   pinned: true,
//                   delegate: _SliverTabBarWithDrawerDelegate(),
//                 ),
//                 // Tab Content
//                 SliverFillRemaining(
//                   child: TabBarView(
//                       children: [
//                         SingleChildScrollView(
//                           physics: const NeverScrollableScrollPhysics(),
//                           child: Column(
//                             children: [
//                               addHeight(30),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Image.asset('assets/icons/home_more.png',
//                                     height: 20,
//                                     width: 20,
//                                     color: const Color(0xFFEAAD21),
//                                   ),
//                                   addWidth(10),
//                                   Text('Offers',
//                                     style: GoogleFonts.poppins(
//                                         fontWeight: FontWeight.w400,
//                                         fontSize: 18,
//                                         color: Colors.black
//                                     ),),
//                                   addWidth(10),
//                                   Image.asset('assets/icons/home_more.png',
//                                     height: 20,
//                                     width: 20,
//                                     color: const Color(0xFFEAAD21),
//                                   ),
//                                 ],
//                               ),
//                               addHeight(32),
//                               ListView.builder(
//                                 shrinkWrap: true,
//                                 physics: const NeverScrollableScrollPhysics(),
//                                 itemCount: 4,
//                                 padding: EdgeInsets.zero,
//                                 itemBuilder: (context, index) {
//                                   return GestureDetector(
//                                     onTap: (){
//                                       Get.toNamed(SingleFoodScreen.route);
//                                     },
//                                     child: Container(
//                                       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                                       decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         borderRadius: BorderRadius.circular(12),
//                                         // boxShadow: [
//                                         //   BoxShadow(
//                                         //     color: Colors.black.withOpacity(0.07),
//                                         //     blurRadius: 10,
//                                         //     spreadRadius: 2,
//                                         //     offset: const Offset(0, 4),
//                                         //   )
//                                         // ],
//                                       ),
//                                       child: Stack(
//                                         children: [
//                                           Container(
//                                             color: Colors.white,
//                                           ),
//                                           Column(
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             children: [
//                                               Row(
//                                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                                 mainAxisAlignment: MainAxisAlignment.start,
//                                                 children: [
//                                                   Expanded(
//                                                     child: Column(
//                                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                                       children: [
//                                                         Row(
//                                                           children: [
//                                                             Text(
//                                                               '1 x ',
//                                                               style: GoogleFonts.poppins(
//                                                                 fontSize: 14,
//                                                                 color: const Color(0xFFE02020),
//                                                                 fontWeight: FontWeight.w500,
//                                                               ),
//                                                             ),
//                                                             Text(
//                                                               'Fillet Fish',
//                                                               style: GoogleFonts.poppins(
//                                                                 fontSize: 14,
//                                                                 color: Colors.black,
//                                                                 fontWeight: FontWeight.w500,
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                         addHeight(9),
//                                                         Text(
//                                                           'Red Hot Twister Sandwich +\nRizo + Coleslaw + Drink.',
//                                                           style: GoogleFonts.poppins(
//                                                               fontSize: 12,
//                                                               fontWeight: FontWeight.w400,
//                                                               color: Colors.black),
//                                                         ),
//                                                         const SizedBox(height: 6),
//
//                                                       ],
//                                                     ).paddingSymmetric(horizontal: 14,vertical: 14),
//                                                   ),
//                                                   Column(
//                                                     crossAxisAlignment: CrossAxisAlignment.end,
//                                                     mainAxisAlignment: MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment.topRight,
//                                                           child: Image.asset('assets/icons/fav.png',
//                                                             height: 30,
//                                                             width: 30,
//                                                           )),
//                                                       addHeight(20),
//                                                       Padding(
//                                                         padding: const EdgeInsets.only(right: 20.0),
//                                                         child: Image.asset('assets/icons/burger_img.png',
//                                                           height: 78,
//                                                           width: 100,
//                                                         ),
//                                                       ),
//                                                       addHeight(20),
//                                                     ],
//                                                   ),
//                                                 ],
//                                               ),
//                                               addHeight(30),
//                                             ],
//                                           ),
//                                           Positioned(
//                                             bottom: 0,
//                                             left: 0,
//                                             child:  Column(
//                                               crossAxisAlignment: CrossAxisAlignment.start,
//                                               mainAxisAlignment: MainAxisAlignment.start,
//                                               children: [
//                                                 GestureDetector(
//                                                   onTap: () {
//                                                     // Handle customization tap
//                                                   },
//                                                   child:  Row(
//                                                     children: [
//                                                       Text(
//                                                         'Customize',
//                                                         style: GoogleFonts.poppins(
//                                                             color: const Color(0xFF203EE0),
//                                                             fontSize: 12,
//                                                             fontWeight: FontWeight.w600),
//                                                       ),
//                                                       addWidth(9),
//                                                       Image.asset('assets/icons/customize.png',
//                                                         height: 16,
//                                                         width: 16,
//                                                       )
//                                                     ],
//                                                   ),
//                                                 ),
//                                                 const SizedBox(height: 10),
//                                                 Container(
//                                                   color: const Color(0xFFEAEAEA),
//                                                   height: 1,
//                                                   width: Get.width * .52,
//                                                 ),
//                                                 const SizedBox(height: 10),
//                                                 Text(
//                                                   '470,000 LBP',
//                                                   style: GoogleFonts.poppins(
//                                                       fontWeight: FontWeight.w500,
//                                                       fontSize: 14),
//                                                 )
//                                               ],
//                                             ).paddingSymmetric(horizontal: 14,vertical: 10),
//                                           ),
//                                           Positioned(
//                                             bottom: 0,
//                                             right: 0,
//                                             child: Container(
//                                               height: 40,
//                                               padding: const EdgeInsets.symmetric(horizontal: 25),
//                                               color: const Color(0xFFFFC732),
//                                               child: Center(
//                                                 child: Text('Add To Cart',
//                                                   style: GoogleFonts.poppins(
//                                                       color: Colors.black,
//                                                       fontSize: 12,
//                                                       fontWeight: FontWeight.w600
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   );
//                                 },
//                               ),
//                               addHeight(10),
//                             ],
//                           ),
//                         ),
//                         SingleChildScrollView(
//                           physics: const AlwaysScrollableScrollPhysics(),
//                           child: Column(
//                             children: [
//                               addHeight(30),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Image.asset('assets/icons/home_more.png',
//                                     height: 20,
//                                     width: 20,
//                                     color: const Color(0xFFEAAD21),
//                                   ),
//                                   addWidth(10),
//                                   Text('Beef',
//                                     style: GoogleFonts.poppins(
//                                         fontWeight: FontWeight.w400,
//                                         fontSize: 18,
//                                         color: Colors.black
//                                     ),),
//                                   addWidth(10),
//                                   Image.asset('assets/icons/home_more.png',
//                                     height: 20,
//                                     width: 20,
//                                     color: const Color(0xFFEAAD21),
//                                   ),
//                                 ],
//                               ),
//                               addHeight(32),
//                               ListView.builder(
//                                 shrinkWrap: true,
//                                 physics: const NeverScrollableScrollPhysics(),
//                                 itemCount: 4,
//                                 padding: EdgeInsets.zero,
//                                 itemBuilder: (context, index) {
//                                   return GestureDetector(
//                                     onTap: (){
//                                       Get.toNamed(SingleFoodScreen.route);
//                                     },
//                                     child: Container(
//                                       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                                       decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         borderRadius: BorderRadius.circular(12),
//                                         // boxShadow: [
//                                         //   BoxShadow(
//                                         //     color: Colors.black.withOpacity(0.07),
//                                         //     blurRadius: 10,
//                                         //     spreadRadius: 2,
//                                         //     offset: const Offset(0, 4),
//                                         //   )
//                                         // ],
//                                       ),
//                                       child: Stack(
//                                         children: [
//                                           Container(
//                                             color: Colors.white,
//                                           ),
//                                           Column(
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             children: [
//                                               Row(
//                                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                                 mainAxisAlignment: MainAxisAlignment.start,
//                                                 children: [
//                                                   Expanded(
//                                                     child: Column(
//                                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                                       children: [
//                                                         Row(
//                                                           children: [
//                                                             Text(
//                                                               '1 x ',
//                                                               style: GoogleFonts.poppins(
//                                                                 fontSize: 14,
//                                                                 color: const Color(0xFFE02020),
//                                                                 fontWeight: FontWeight.w500,
//                                                               ),
//                                                             ),
//                                                             Text(
//                                                               'Fillet Fish',
//                                                               style: GoogleFonts.poppins(
//                                                                 fontSize: 14,
//                                                                 color: Colors.black,
//                                                                 fontWeight: FontWeight.w500,
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                         addHeight(9),
//                                                         Text(
//                                                           'Red Hot Twister Sandwich +\nRizo + Coleslaw + Drink.',
//                                                           style: GoogleFonts.poppins(
//                                                               fontSize: 12,
//                                                               fontWeight: FontWeight.w400,
//                                                               color: Colors.black),
//                                                         ),
//                                                         const SizedBox(height: 6),
//
//                                                       ],
//                                                     ).paddingSymmetric(horizontal: 14,vertical: 14),
//                                                   ),
//                                                   Column(
//                                                     crossAxisAlignment: CrossAxisAlignment.end,
//                                                     mainAxisAlignment: MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment.topRight,
//                                                           child: Image.asset('assets/icons/fav.png',
//                                                             height: 30,
//                                                             width: 30,
//                                                           )),
//                                                       addHeight(20),
//                                                       Padding(
//                                                         padding: const EdgeInsets.only(right: 20.0),
//                                                         child: Image.asset('assets/icons/burger_img.png',
//                                                           height: 78,
//                                                           width: 100,
//                                                         ),
//                                                       ),
//                                                       addHeight(20),
//                                                     ],
//                                                   ),
//                                                 ],
//                                               ),
//                                               addHeight(30),
//                                             ],
//                                           ),
//                                           Positioned(
//                                             bottom: 0,
//                                             left: 0,
//                                             child:  Column(
//                                               crossAxisAlignment: CrossAxisAlignment.start,
//                                               mainAxisAlignment: MainAxisAlignment.start,
//                                               children: [
//                                                 GestureDetector(
//                                                   onTap: () {
//                                                     // Handle customization tap
//                                                   },
//                                                   child:  Row(
//                                                     children: [
//                                                       Text(
//                                                         'Customize',
//                                                         style: GoogleFonts.poppins(
//                                                             color: const Color(0xFF203EE0),
//                                                             fontSize: 12,
//                                                             fontWeight: FontWeight.w600),
//                                                       ),
//                                                       addWidth(9),
//                                                       Image.asset('assets/icons/customize.png',
//                                                         height: 16,
//                                                         width: 16,
//                                                       )
//                                                     ],
//                                                   ),
//                                                 ),
//                                                 const SizedBox(height: 10),
//                                                 Container(
//                                                   color: const Color(0xFFEAEAEA),
//                                                   height: 1,
//                                                   width: Get.width * .52,
//                                                 ),
//                                                 const SizedBox(height: 10),
//                                                 Text(
//                                                   '470,000 LBP',
//                                                   style: GoogleFonts.poppins(
//                                                       fontWeight: FontWeight.w500,
//                                                       fontSize: 14),
//                                                 )
//                                               ],
//                                             ).paddingSymmetric(horizontal: 14,vertical: 10),
//                                           ),
//                                           Positioned(
//                                             bottom: 0,
//                                             right: 0,
//                                             child: Container(
//                                               height: 40,
//                                               padding: const EdgeInsets.symmetric(horizontal: 25),
//                                               color: const Color(0xFFFFC732),
//                                               child: Center(
//                                                 child: Text('Add To Cart',
//                                                   style: GoogleFonts.poppins(
//                                                       color: Colors.black,
//                                                       fontSize: 12,
//                                                       fontWeight: FontWeight.w600
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   );
//                                 },
//                               ),
//                               addHeight(10),
//                             ],
//                           ),
//                         ),
//                         SingleChildScrollView(
//                           physics: const AlwaysScrollableScrollPhysics(),
//                           child: Column(
//                             children: [
//                               addHeight(30),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Image.asset('assets/icons/home_more.png',
//                                     height: 20,
//                                     width: 20,
//                                     color: const Color(0xFFEAAD21),
//                                   ),
//                                   addWidth(10),
//                                   Text('Chicken',
//                                     style: GoogleFonts.poppins(
//                                         fontWeight: FontWeight.w400,
//                                         fontSize: 18,
//                                         color: Colors.black
//                                     ),),
//                                   addWidth(10),
//                                   Image.asset('assets/icons/home_more.png',
//                                     height: 20,
//                                     width: 20,
//                                     color: const Color(0xFFEAAD21),
//                                   ),
//                                 ],
//                               ),
//                               addHeight(32),
//                               ListView.builder(
//                                 shrinkWrap: true,
//                                 physics: const NeverScrollableScrollPhysics(),
//                                 itemCount: 4,
//                                 padding: EdgeInsets.zero,
//                                 itemBuilder: (context, index) {
//                                   return GestureDetector(
//                                     onTap: (){
//                                       Get.toNamed(SingleFoodScreen.route);
//                                     },
//                                     child: Container(
//                                       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                                       decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         borderRadius: BorderRadius.circular(12),
//                                         // boxShadow: [
//                                         //   BoxShadow(
//                                         //     color: Colors.black.withOpacity(0.07),
//                                         //     blurRadius: 10,
//                                         //     spreadRadius: 2,
//                                         //     offset: const Offset(0, 4),
//                                         //   )
//                                         // ],
//                                       ),
//                                       child: Stack(
//                                         children: [
//                                           Container(
//                                             color: Colors.white,
//                                           ),
//                                           Column(
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             children: [
//                                               Row(
//                                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                                 mainAxisAlignment: MainAxisAlignment.start,
//                                                 children: [
//                                                   Expanded(
//                                                     child: Column(
//                                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                                       children: [
//                                                         Row(
//                                                           children: [
//                                                             Text(
//                                                               '1 x ',
//                                                               style: GoogleFonts.poppins(
//                                                                 fontSize: 14,
//                                                                 color: const Color(0xFFE02020),
//                                                                 fontWeight: FontWeight.w500,
//                                                               ),
//                                                             ),
//                                                             Text(
//                                                               'Fillet Fish',
//                                                               style: GoogleFonts.poppins(
//                                                                 fontSize: 14,
//                                                                 color: Colors.black,
//                                                                 fontWeight: FontWeight.w500,
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                         addHeight(9),
//                                                         Text(
//                                                           'Red Hot Twister Sandwich +\nRizo + Coleslaw + Drink.',
//                                                           style: GoogleFonts.poppins(
//                                                               fontSize: 12,
//                                                               fontWeight: FontWeight.w400,
//                                                               color: Colors.black),
//                                                         ),
//                                                         const SizedBox(height: 6),
//
//                                                       ],
//                                                     ).paddingSymmetric(horizontal: 14,vertical: 14),
//                                                   ),
//                                                   Column(
//                                                     crossAxisAlignment: CrossAxisAlignment.end,
//                                                     mainAxisAlignment: MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment.topRight,
//                                                           child: Image.asset('assets/icons/fav.png',
//                                                             height: 30,
//                                                             width: 30,
//                                                           )),
//                                                       addHeight(20),
//                                                       Padding(
//                                                         padding: const EdgeInsets.only(right: 20.0),
//                                                         child: Image.asset('assets/icons/burger_img.png',
//                                                           height: 78,
//                                                           width: 100,
//                                                         ),
//                                                       ),
//                                                       addHeight(20),
//                                                     ],
//                                                   ),
//                                                 ],
//                                               ),
//                                               addHeight(30),
//                                             ],
//                                           ),
//                                           Positioned(
//                                             bottom: 0,
//                                             left: 0,
//                                             child:  Column(
//                                               crossAxisAlignment: CrossAxisAlignment.start,
//                                               mainAxisAlignment: MainAxisAlignment.start,
//                                               children: [
//                                                 GestureDetector(
//                                                   onTap: () {
//                                                     // Handle customization tap
//                                                   },
//                                                   child:  Row(
//                                                     children: [
//                                                       Text(
//                                                         'Customize',
//                                                         style: GoogleFonts.poppins(
//                                                             color: const Color(0xFF203EE0),
//                                                             fontSize: 12,
//                                                             fontWeight: FontWeight.w600),
//                                                       ),
//                                                       addWidth(9),
//                                                       Image.asset('assets/icons/customize.png',
//                                                         height: 16,
//                                                         width: 16,
//                                                       )
//                                                     ],
//                                                   ),
//                                                 ),
//                                                 const SizedBox(height: 10),
//                                                 Container(
//                                                   color: const Color(0xFFEAEAEA),
//                                                   height: 1,
//                                                   width: Get.width * .52,
//                                                 ),
//                                                 const SizedBox(height: 10),
//                                                 Text(
//                                                   '470,000 LBP',
//                                                   style: GoogleFonts.poppins(
//                                                       fontWeight: FontWeight.w500,
//                                                       fontSize: 14),
//                                                 )
//                                               ],
//                                             ).paddingSymmetric(horizontal: 14,vertical: 10),
//                                           ),
//                                           Positioned(
//                                             bottom: 0,
//                                             right: 0,
//                                             child: Container(
//                                               height: 40,
//                                               padding: const EdgeInsets.symmetric(horizontal: 25),
//                                               color: const Color(0xFFFFC732),
//                                               child: Center(
//                                                 child: Text('Add To Cart',
//                                                   style: GoogleFonts.poppins(
//                                                       color: Colors.black,
//                                                       fontSize: 12,
//                                                       fontWeight: FontWeight.w600
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   );
//                                 },
//                               ),
//                               addHeight(10),
//                             ],
//                           ),
//                         ),
//                         SingleChildScrollView(
//                           physics: const AlwaysScrollableScrollPhysics(),
//                           child: Column(
//                             children: [
//                               addHeight(30),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Image.asset('assets/icons/home_more.png',
//                                     height: 20,
//                                     width: 20,
//                                     color: const Color(0xFFEAAD21),
//                                   ),
//                                   addWidth(10),
//                                   Text('Fish',
//                                     style: GoogleFonts.poppins(
//                                         fontWeight: FontWeight.w400,
//                                         fontSize: 18,
//                                         color: Colors.black
//                                     ),),
//                                   addWidth(10),
//                                   Image.asset('assets/icons/home_more.png',
//                                     height: 20,
//                                     width: 20,
//                                     color: const Color(0xFFEAAD21),
//                                   ),
//                                 ],
//                               ),
//                               addHeight(32),
//                               ListView.builder(
//                                 shrinkWrap: true,
//                                 physics: const NeverScrollableScrollPhysics(),
//                                 itemCount: 4,
//                                 padding: EdgeInsets.zero,
//                                 itemBuilder: (context, index) {
//                                   return GestureDetector(
//                                     onTap: (){
//                                       Get.toNamed(SingleFoodScreen.route);
//                                     },
//                                     child: Container(
//                                       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                                       decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         borderRadius: BorderRadius.circular(12),
//                                         // boxShadow: [
//                                         //   BoxShadow(
//                                         //     color: Colors.black.withOpacity(0.07),
//                                         //     blurRadius: 10,
//                                         //     spreadRadius: 2,
//                                         //     offset: const Offset(0, 4),
//                                         //   )
//                                         // ],
//                                       ),
//                                       child: Stack(
//                                         children: [
//                                           Container(
//                                             color: Colors.white,
//                                           ),
//                                           Column(
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             children: [
//                                               Row(
//                                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                                 mainAxisAlignment: MainAxisAlignment.start,
//                                                 children: [
//                                                   Expanded(
//                                                     child: Column(
//                                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                                       children: [
//                                                         Row(
//                                                           children: [
//                                                             Text(
//                                                               '1 x ',
//                                                               style: GoogleFonts.poppins(
//                                                                 fontSize: 14,
//                                                                 color: const Color(0xFFE02020),
//                                                                 fontWeight: FontWeight.w500,
//                                                               ),
//                                                             ),
//                                                             Text(
//                                                               'Fillet Fish',
//                                                               style: GoogleFonts.poppins(
//                                                                 fontSize: 14,
//                                                                 color: Colors.black,
//                                                                 fontWeight: FontWeight.w500,
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                         addHeight(9),
//                                                         Text(
//                                                           'Red Hot Twister Sandwich +\nRizo + Coleslaw + Drink.',
//                                                           style: GoogleFonts.poppins(
//                                                               fontSize: 12,
//                                                               fontWeight: FontWeight.w400,
//                                                               color: Colors.black),
//                                                         ),
//                                                         const SizedBox(height: 6),
//
//                                                       ],
//                                                     ).paddingSymmetric(horizontal: 14,vertical: 14),
//                                                   ),
//                                                   Column(
//                                                     crossAxisAlignment: CrossAxisAlignment.end,
//                                                     mainAxisAlignment: MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment.topRight,
//                                                           child: Image.asset('assets/icons/fav.png',
//                                                             height: 30,
//                                                             width: 30,
//                                                           )),
//                                                       addHeight(20),
//                                                       Padding(
//                                                         padding: const EdgeInsets.only(right: 20.0),
//                                                         child: Image.asset('assets/icons/burger_img.png',
//                                                           height: 78,
//                                                           width: 100,
//                                                         ),
//                                                       ),
//                                                       addHeight(20),
//                                                     ],
//                                                   ),
//                                                 ],
//                                               ),
//                                               addHeight(30),
//                                             ],
//                                           ),
//                                           Positioned(
//                                             bottom: 0,
//                                             left: 0,
//                                             child:  Column(
//                                               crossAxisAlignment: CrossAxisAlignment.start,
//                                               mainAxisAlignment: MainAxisAlignment.start,
//                                               children: [
//                                                 GestureDetector(
//                                                   onTap: () {
//                                                     // Handle customization tap
//                                                   },
//                                                   child:  Row(
//                                                     children: [
//                                                       Text(
//                                                         'Customize',
//                                                         style: GoogleFonts.poppins(
//                                                             color: const Color(0xFF203EE0),
//                                                             fontSize: 12,
//                                                             fontWeight: FontWeight.w600),
//                                                       ),
//                                                       addWidth(9),
//                                                       Image.asset('assets/icons/customize.png',
//                                                         height: 16,
//                                                         width: 16,
//                                                       )
//                                                     ],
//                                                   ),
//                                                 ),
//                                                 const SizedBox(height: 10),
//                                                 Container(
//                                                   color: const Color(0xFFEAEAEA),
//                                                   height: 1,
//                                                   width: Get.width * .52,
//                                                 ),
//                                                 const SizedBox(height: 10),
//                                                 Text(
//                                                   '470,000 LBP',
//                                                   style: GoogleFonts.poppins(
//                                                       fontWeight: FontWeight.w500,
//                                                       fontSize: 14),
//                                                 )
//                                               ],
//                                             ).paddingSymmetric(horizontal: 14,vertical: 10),
//                                           ),
//                                           Positioned(
//                                             bottom: 0,
//                                             right: 0,
//                                             child: Container(
//                                               height: 40,
//                                               padding: const EdgeInsets.symmetric(horizontal: 25),
//                                               color: const Color(0xFFFFC732),
//                                               child: Center(
//                                                 child: Text('Add To Cart',
//                                                   style: GoogleFonts.poppins(
//                                                       color: Colors.black,
//                                                       fontSize: 12,
//                                                       fontWeight: FontWeight.w600
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   );
//                                 },
//                               ),
//                               addHeight(10),
//                             ],
//                           ),
//                         ),
//                         SingleChildScrollView(
//                           physics: const AlwaysScrollableScrollPhysics(),
//                           child: Column(
//                             children: [
//                               addHeight(30),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Image.asset('assets/icons/home_more.png',
//                                     height: 20,
//                                     width: 20,
//                                     color: const Color(0xFFEAAD21),
//                                   ),
//                                   addWidth(10),
//                                   Text('Joy Meals',
//                                     style: GoogleFonts.poppins(
//                                         fontWeight: FontWeight.w400,
//                                         fontSize: 18,
//                                         color: Colors.black
//                                     ),),
//                                   addWidth(10),
//                                   Image.asset('assets/icons/home_more.png',
//                                     height: 20,
//                                     width: 20,
//                                     color: const Color(0xFFEAAD21),
//                                   ),
//                                 ],
//                               ),
//                               addHeight(32),
//                               ListView.builder(
//                                 shrinkWrap: true,
//                                 physics: const NeverScrollableScrollPhysics(),
//                                 itemCount: 4,
//                                 padding: EdgeInsets.zero,
//                                 itemBuilder: (context, index) {
//                                   return GestureDetector(
//                                     onTap: (){
//                                       Get.toNamed(SingleFoodScreen.route);
//                                     },
//                                     child: Container(
//                                       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                                       decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         borderRadius: BorderRadius.circular(12),
//                                         // boxShadow: [
//                                         //   BoxShadow(
//                                         //     color: Colors.black.withOpacity(0.07),
//                                         //     blurRadius: 10,
//                                         //     spreadRadius: 2,
//                                         //     offset: const Offset(0, 4),
//                                         //   )
//                                         // ],
//                                       ),
//                                       child: Stack(
//                                         children: [
//                                           Container(
//                                             color: Colors.white,
//                                           ),
//                                           Column(
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             children: [
//                                               Row(
//                                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                                 mainAxisAlignment: MainAxisAlignment.start,
//                                                 children: [
//                                                   Expanded(
//                                                     child: Column(
//                                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                                       children: [
//                                                         Row(
//                                                           children: [
//                                                             Text(
//                                                               '1 x ',
//                                                               style: GoogleFonts.poppins(
//                                                                 fontSize: 14,
//                                                                 color: const Color(0xFFE02020),
//                                                                 fontWeight: FontWeight.w500,
//                                                               ),
//                                                             ),
//                                                             Text(
//                                                               'Fillet Fish',
//                                                               style: GoogleFonts.poppins(
//                                                                 fontSize: 14,
//                                                                 color: Colors.black,
//                                                                 fontWeight: FontWeight.w500,
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                         addHeight(9),
//                                                         Text(
//                                                           'Red Hot Twister Sandwich +\nRizo + Coleslaw + Drink.',
//                                                           style: GoogleFonts.poppins(
//                                                               fontSize: 12,
//                                                               fontWeight: FontWeight.w400,
//                                                               color: Colors.black),
//                                                         ),
//                                                         const SizedBox(height: 6),
//
//                                                       ],
//                                                     ).paddingSymmetric(horizontal: 14,vertical: 14),
//                                                   ),
//                                                   Column(
//                                                     crossAxisAlignment: CrossAxisAlignment.end,
//                                                     mainAxisAlignment: MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment.topRight,
//                                                           child: Image.asset('assets/icons/fav.png',
//                                                             height: 30,
//                                                             width: 30,
//                                                           )),
//                                                       addHeight(20),
//                                                       Padding(
//                                                         padding: const EdgeInsets.only(right: 20.0),
//                                                         child: Image.asset('assets/icons/burger_img.png',
//                                                           height: 78,
//                                                           width: 100,
//                                                         ),
//                                                       ),
//                                                       addHeight(20),
//                                                     ],
//                                                   ),
//                                                 ],
//                                               ),
//                                               addHeight(30),
//                                             ],
//                                           ),
//                                           Positioned(
//                                             bottom: 0,
//                                             left: 0,
//                                             child:  Column(
//                                               crossAxisAlignment: CrossAxisAlignment.start,
//                                               mainAxisAlignment: MainAxisAlignment.start,
//                                               children: [
//                                                 GestureDetector(
//                                                   onTap: () {
//                                                     // Handle customization tap
//                                                   },
//                                                   child:  Row(
//                                                     children: [
//                                                       Text(
//                                                         'Customize',
//                                                         style: GoogleFonts.poppins(
//                                                             color: const Color(0xFF203EE0),
//                                                             fontSize: 12,
//                                                             fontWeight: FontWeight.w600),
//                                                       ),
//                                                       addWidth(9),
//                                                       Image.asset('assets/icons/customize.png',
//                                                         height: 16,
//                                                         width: 16,
//                                                       )
//                                                     ],
//                                                   ),
//                                                 ),
//                                                 const SizedBox(height: 10),
//                                                 Container(
//                                                   color: const Color(0xFFEAEAEA),
//                                                   height: 1,
//                                                   width: Get.width * .52,
//                                                 ),
//                                                 const SizedBox(height: 10),
//                                                 Text(
//                                                   '470,000 LBP',
//                                                   style: GoogleFonts.poppins(
//                                                       fontWeight: FontWeight.w500,
//                                                       fontSize: 14),
//                                                 )
//                                               ],
//                                             ).paddingSymmetric(horizontal: 14,vertical: 10),
//                                           ),
//                                           Positioned(
//                                             bottom: 0,
//                                             right: 0,
//                                             child: Container(
//                                               height: 40,
//                                               padding: const EdgeInsets.symmetric(horizontal: 25),
//                                               color: const Color(0xFFFFC732),
//                                               child: Center(
//                                                 child: Text('Add To Cart',
//                                                   style: GoogleFonts.poppins(
//                                                       color: Colors.black,
//                                                       fontSize: 12,
//                                                       fontWeight: FontWeight.w600
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   );
//                                 },
//                               ),
//                               addHeight(10),
//                             ],
//                           ),
//                         ),
//                       ]
//                   ),
//                 ),
//               ],
//             ),
//
//             // Back Button on top
//             Positioned(
//               top: 40,
//               left: 20,
//               child: GestureDetector(
//                 onTap: () {
//                   bottomController.pageIndex.value = 0;
//                 },
//                 child: Image.asset(
//                   'assets/icons/arrow_back_white.png',
//                   height: 38,
//                   width: 38,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// class _SliverTabBarWithDrawerDelegate extends SliverPersistentHeaderDelegate {
//   @override
//   double get minExtent => 56;
//   @override
//   double get maxExtent => 56;
//
//   @override
//   Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return Container(
//       color: Colors.white,
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       alignment: Alignment.centerLeft,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           GestureDetector(
//             onTap: () => Get.toNamed(DrawerMenuScreen.route),
//             child: Image.asset(
//               'assets/icons/drawer.png',
//               height: 20,
//               width: 20,
//             ),
//           ),
//           const SizedBox(width: 8),
//           Expanded(
//             child: TabBar(
//               isScrollable: true,
//               labelColor: const Color(0xFFE02020),
//               unselectedLabelColor: const Color(0xFF888888),
//               indicatorColor: const Color(0xFFE02020),
//               indicatorWeight: 2.5,
//               dividerColor: Colors.transparent,
//               indicatorSize: TabBarIndicatorSize.label,
//               tabs: [
//                 _buildTab("🔥 Offers"),
//                 _buildTab("Beef"),
//                 _buildTab("Chicken"),
//                 _buildTab("Fish"),
//                 _buildTab("Joy Meals"),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Tab _buildTab(String label) {
//     return Tab(
//       child: Text(
//         label,
//         style: GoogleFonts.poppins(
//           fontSize: 14,
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//     );
//   }
//
//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => false;
// }
//
