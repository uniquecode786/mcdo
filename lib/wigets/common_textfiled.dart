import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonTextField extends StatefulWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final bool? obSecure;
  final bool readOnly;
  final VoidCallback? onTap;
  final VoidCallback? onEditingCompleted;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  final bool isMulti;
  final bool autofocus;
  final bool enabled;
  final String? errorText;
  final String? labelText;
  final String? hintText;
  final dynamic contentPadding;
  final Widget? suffixIcon;
  final Widget? prefix;
  final Color? fillColor;

  final List<TextInputFormatter>? inputFormatters;

  const CommonTextField({
    super.key,
    this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.obSecure,
    this.contentPadding,
    this.textInputAction,
    this.onTap,
    this.isMulti = false,
    this.readOnly = false,
    this.autofocus = false,
    this.errorText,
    required this.hintText,
    this.suffixIcon,
    this.prefix,
    this.enabled = true,
    this.onEditingCompleted,
    this.onChanged,
    this.onSaved,
    this.labelText,
    this.inputFormatters,
    this.onFieldSubmitted,
    this.fillColor,
  });

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w400
        ),
        autofocus: false,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textInputAction: TextInputAction.next,
        onFieldSubmitted: widget.onFieldSubmitted,
        inputFormatters: widget.inputFormatters,
        onChanged: widget.onChanged,
        onEditingComplete: widget.onEditingCompleted,
        obscureText: widget.obSecure ?? false,
        minLines: widget.isMulti ? 4 : 1,
        maxLines: widget.isMulti ? null : 1,
        onTap: widget.onTap,
        enabled: widget.enabled,
        readOnly: widget.readOnly,
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        decoration: InputDecoration(
          counterStyle: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w400
          ),
          counter: const Offstage(),

          errorMaxLines: 2,
          enabled: widget.enabled,
          contentPadding: const EdgeInsets.all(15),
          filled: true,
          fillColor: widget.fillColor,
          hintText: widget.hintText.toString() ?? '',
          errorText: widget.errorText,
          labelText: widget.labelText,
          prefixIcon: widget.prefix,
          suffixIcon: widget.suffixIcon,
          hintStyle: GoogleFonts.poppins(
              color: const Color(0xFFC5C5C5),
              fontSize: 13,
              fontWeight: FontWeight.w400
          ),

          border: InputBorder.none,
          focusedErrorBorder:  const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)), borderSide: BorderSide(color: Color(0xFF6B6B6B))),
          errorBorder:  const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)), borderSide: BorderSide(color: Color(0xFF6B6B6B))),
          focusedBorder:  const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)), borderSide: BorderSide(color:Color(0xFF6B6B6B))),
          disabledBorder:  const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(color:Color(0xFF6B6B6B)),
          ),
          enabledBorder:  const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(color: Color(0xFF6B6B6B)),
          ),
        ),
        validator: widget.validator);
  }
}