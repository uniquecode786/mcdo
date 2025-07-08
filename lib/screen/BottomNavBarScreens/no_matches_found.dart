import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routers/routers.dart';


class NoMatchesFoundScreen extends StatefulWidget {
  const NoMatchesFoundScreen({super.key});
  static String route = '/NoMatchesFoundScreen';
  @override
  State<NoMatchesFoundScreen> createState() => _NoMatchesFoundScreenState();
}

class _NoMatchesFoundScreenState extends State<NoMatchesFoundScreen> {
  @override
  Widget build(BuildContext context) {
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/scanner.png',
                width: 30,
                height: 30,
              ),
            ],
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
              Text('deals',
                style: GoogleFonts.poppins(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
              addHeight(60),
              Center(
                child: Image.asset('assets/icons/no_more.png',
                height: 240,
                  width: 240,
                ),
              ),
              addHeight(32),
              Text('There\'s no matching deals right now.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                ),),
              addHeight(10),
              Center(
                child: Text('Check in again soon for more!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                  ),),
              ),
              addHeight(8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      blurRadius: 12,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "my meatway's rewards",
                          style:  GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        addHeight(12),
                        InkWell(
                          onTap: () {
                          },
                          child:  Text(
                            'how it works',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF176397),
                              decoration: TextDecoration.underline,
                              decorationColor:  const Color(0xFF176397),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset('assets/icons/reward_icon.png',
                          height: 30,
                          width: 60,
                        )
                      ],
                    )
                  ],
                ),
              ),

            ],
        ),
      ),
    );
  }
}
