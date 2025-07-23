import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

class Helpers {
  Helpers.of(BuildContext context) {
    context = context;
  }
  static OverlayEntry overlayLoader(context) {
    OverlayEntry loader = OverlayEntry(builder: (context) {
      final size = MediaQuery.of(context).size;
      return Positioned(
        height: size.height,
        width: size.width,
        top: 0,
        left: 0,
        child: Material(
            color: Colors.transparent,
            child:  Center(
                child: SizedBox(height: 100, width: 100, child: Lottie.asset("assets/loti/loading.json", frameRate: FrameRate.max))
                    .animate()
                    .scale(duration: 200.ms)
                    .fade(duration: 200.ms))
        ),
      );
    });
    return loader;
  }
  static hideLoader(OverlayEntry loader) {
    Timer(const Duration(milliseconds: 250), () {
      try {
        loader.remove();
        // ignore: empty_catches
      } catch (e) {}
    });
  }
  static Future addImagePicker({ImageSource imageSource = ImageSource.gallery, int imageQuality = 100}) async {
    try {
      final item = await ImagePicker().pickImage(source: imageSource, imageQuality: imageQuality);
      if (item == null) {
        return null;
      } else {
        return File(item.path);
      }
    } on PlatformException catch (e) {
      throw Exception(e);
    }
  }
}
extension ConvertToNum on String {

  Duration get durationTime{
    return Duration(
      hours: split(":").first.toNum.toInt(),
      minutes: split(":")[1].toNum.toInt(),
    );
  }

  String get normalTime{
    if(split(":").length > 1){
      return "${split(":").first}:${split(":")[1]}";
    }
    return this;
  }


  num? get convertToNum {
    return num.tryParse(this);
  }

  num get toNum {
    return num.tryParse(this) ?? 0;
  }

  bool get invalidEmail {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern.toString());
    return (regex.hasMatch(this)) ? false : true;
  }

  String? validateEmpty(String gg) {
    return trim().isEmpty ? "$gg is required" : null;
  }

  String get checkNullable {
    if (this == "null") return "";
    return this;
  }

  String get checkHTTP {
    return contains("https://") || contains("http://") ? split("/").last : "";
  }

  String get convertToFormatTime {
    return "${split(":")[0]}:${split(":")[1]}";
  }
}
