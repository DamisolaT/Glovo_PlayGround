import 'package:flutter/material.dart';

import '../shared/app_colors.dart';
import '../shared/constant.dart';

class AppButtons extends StatelessWidget {
  const AppButtons({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 330,
        height: 54,
        padding: const EdgeInsets.only(
          left: 50,
          right: 50,
        ),
        decoration: BoxDecoration(
            color: AppColors.buttonColor,
            borderRadius: BorderRadius.circular(27)),
        child: Center(
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: textStyle.copyWith(
                fontWeight: FontWeight.w900,
                fontSize: 20,
                color: AppColors.black),
          ),
        ),
      ),
    );
  }
}
