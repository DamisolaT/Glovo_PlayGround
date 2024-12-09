import 'package:flutter/material.dart';

import '../shared/app_colors.dart';

class TextInputWidget extends StatelessWidget {
  const TextInputWidget({
    super.key,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.textInputType,
    this.onChanged,
  });
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputType? textInputType;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      keyboardType: textInputType,
      cursorColor: AppColors.appBG,
      decoration: InputDecoration(
          fillColor: AppColors.inputColor,
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(27),
              borderSide: BorderSide.none),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(27),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(27),
              borderSide: const BorderSide(color: AppColors.white))),
    );
  }
}
