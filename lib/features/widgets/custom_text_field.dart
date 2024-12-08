import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool isObscureText;
  final String obscureCharacter;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  const CustomTextField({
    super.key,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.isObscureText = false,
    this.obscureCharacter = 'a',
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isObscureText,
      obscuringCharacter: obscureCharacter,
      style: urbanisMedium.copyWith(color: Colors.black, fontSize: 14),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 12.0),
          constraints:
              BoxConstraints(maxHeight: height * 0.065, minWidth: width),
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: urbanisMedium.copyWith(color: Colors.grey, fontSize: 14),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.blue, width: 1)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.blue, width: 1)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.blue, width: 1))),
    );
  }
}

TextStyle urbanisMedium = const TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
