import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final bool? expandedValue;
  final Color? textColor;
  final double radius;

  const CustomButton(
      {Key? key, required this.title,required this.radius, this.onPressed, this.backgroundColor, this.textColor, this.expandedValue = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 65,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
            surfaceTintColor: const Color(0xFFFFC732),
            backgroundColor: const Color(0xFFFFC732),
            textStyle: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),),
          onPressed: onPressed,
          child: expandedValue == true
              ? SizedBox(
            width: double.maxFinite,
            child: Center(
              child: Text(
                title.capitalizeFirst!,
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          )
              : FittedBox(
            child: Text(
              title.capitalizeFirst!,
              style: GoogleFonts.poppins(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          )),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final bool? expandedValue;
  final Color? textColor;
  final double radius;

  const CustomOutlinedButton({
    Key? key,
    required this.title,
    required this.radius,
    this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.expandedValue = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 65,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: backgroundColor ?? const Color(0xFFFEBB0A), width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          backgroundColor: backgroundColor ?? Colors.transparent,
        ),
        onPressed: onPressed,
        child: expandedValue == true
            ? SizedBox(
          width: double.infinity,
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: textColor ?? const Color(0xFFFEBB0A),
              ),
            ),
          ),
        )
            : FittedBox(
          child: Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: textColor ?? const Color(0xFFFEBB0A),
            ),
          ),
        ),
      ),
    );
  }
}