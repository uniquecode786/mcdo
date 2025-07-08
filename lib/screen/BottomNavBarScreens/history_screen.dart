import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routers/routers.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});
  static String route = '/HistoryScreen';
  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    final orders = [
      {
        'title': 'Processing',
        'color': const Color(0xFFFFBE00),
        'amount': '650,000 LBP',
      },
      {
        'title': 'Canceled',
        'color': const Color(0xFFE02020),
        'amount': '650,000 LBP',
      },
      {
        'title': 'Delivered',
        'color': const Color(0xFF13A200),
        'amount': '600,000 LBP',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/app_new_icon.png',
              width: 30,
              height: 30,
            ),
          ],
        ),
        leadingWidth: 60,
        actions: [
          GestureDetector(
            onTap: (){

            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icons/scanner.png',
                  width: 30,
                  height: 30,
                ),
              ],
            ),
          ),
          addWidth(12)
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            addHeight(40),
             Text(
              'history',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
              color: Colors.black),
            ),
            addHeight(20),
            ListView.separated(
              padding: const EdgeInsets.all(16),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (_, __) => const Divider(color: Color(0xFFEFEFF4), height: 40),
              itemCount: orders.length,
              itemBuilder: (context, index) {
                final order = orders[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Expanded(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text(
                                 'Chicken Way Hara',
                                 style: GoogleFonts.poppins(
                                     fontWeight: FontWeight.w600,
                                     fontSize: 16),
                               ),
                               addHeight(5),
                               Text(
                                 order['title'] as String,
                                 style: GoogleFonts.poppins(
                                     color: order['color'] as Color,
                                     fontWeight: FontWeight.w500,
                                     fontSize: 12),
                               ),
                               addHeight(5),
                               Text('18 February 2023 18:24',
                                 style: GoogleFonts.poppins(
                                     color: const Color(0xFF555555),
                                     fontWeight: FontWeight.w400,
                                     fontSize: 12),),
                               Text('Order ID: 1037825462',
                                 style: GoogleFonts.poppins(
                                     color: const Color(0xFF555555),
                                     fontWeight: FontWeight.w400,
                                     fontSize: 12),),
                               addHeight(12),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Row(
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: [
                                      Image.asset('assets/icons/star_history.png',
                                      height: 25,
                                      width: 25,
                                      ),
                                       addWidth(6),
                                            Text('100',
                                              style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  color: const Color(0xFF555555)
                                        ),
                                        ),
                                     ],
                                   ),
                                   addWidth(60),
                                   Row(
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: [
                                       Image.asset('assets/icons/money.png',
                                         height: 25,
                                         width: 25,
                                       ),
                                       addWidth(6),
                                       Text('650,000 LBP',
                                         style: GoogleFonts.poppins(
                                             fontWeight: FontWeight.w400,
                                             fontSize: 12,
                                             color: const Color(0xFF555555)
                                         ),
                                       ),
                                     ],
                                   ),
                                    ],
                               )
                             ],
                           ),
                         ),
                         const Icon(Icons.arrow_forward_ios,
                         color: Color(0xFFD7E0E7),
                         size: 25,)
                       ],
                     )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}