import 'package:flutter/material.dart';
import 'package:glovo_assign1/features/common/custom_app_bar.dart';

import '../shared/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.appBG,
      appBar: CustomAppBar(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 53),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 66,
            ),
            Text(
              "Welcome Back!",
              style: TextStyle(
                  fontFamily: "Jockey",
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Login to continue",
              style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            )
          ],
        ),
      )),
    );
  }
}
