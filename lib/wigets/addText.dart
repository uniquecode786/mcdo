import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final double? height;
  final dynamic maxLines;
  final double? letterSpacing;
  final double? wordSpacing;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final TextDecoration? decoration;
  final Color? color;
  const AddText({
    Key? key,
    required this.text,
    this.fontSize = 0,
    this.fontWeight = FontWeight.w500,
    this.textAlign,
    this.textOverflow,
    this.decoration,
    this.color = Colors.black,
    this.height = 1,
    this.maxLines,
    this.letterSpacing,
    this.wordSpacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      maxLines: maxLines,
      overflow: textOverflow,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
          color: color,
          fontSize: fontSize,
          decoration: decoration,
          height: height,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
          fontWeight: fontWeight),
    );
  }
}