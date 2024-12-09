import 'package:flutter/cupertino.dart';
import 'package:glovo_assign1/features/shared/app_colors.dart';

final emailRegex = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const textStyle = TextStyle(
  fontFamily: "Inter",
  fontWeight: FontWeight.w900,
  color: AppColors.black,
);
