import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glovo_assign1/features/common/custom_app_bar.dart';
import 'package:glovo_assign1/features/shared/assets.dart';
import 'package:glovo_assign1/features/shared/constant.dart';

import '../common/app_button.dart';
import '../navigation/route_strings.dart';
import '../shared/app_colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBG,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 57,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55, right: 54),
              child: Image.asset(
                AppAssets.reshotIcon,
                height: 249,
                width: 321,
              ),
            ),
            const SizedBox(
              height: 46,
            ),
            const Text(
              "Hello , Welcome !",
              style: TextStyle(
                  fontFamily: "Jockey", fontSize: 36, color: AppColors.white),
            ),
            const SizedBox(
              height: 24,
            ),
            const Center(
              child: Text(
                "Welcome to codeChamp.in Top platform",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 16,
                  color: AppColors.white,
                ),
              ),
            ),
            const Center(
              child: Text(
                "to coders",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 16,
                  color: AppColors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 46,
            ),
            AppButtons(
              buttonText: "Login",
              onPressed: () {
                Navigator.pushNamed(context, AppRouteStrings.loginScreen);
              },
            ),
            const SizedBox(
              height: 24,
            ),
            AppButtons(
              buttonText: "Sign Up",
              onPressed: () {
                Navigator.pushNamed(context, AppRouteStrings.signUpScreen);
              },
            ),
            const SizedBox(
              height: 46,
            ),
            Text(
              "Or  via social media",
              textAlign: TextAlign.center,
              style: textStyle.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.white),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppAssets.facebookIcon),
                const SizedBox(
                  width: 13,
                ),
                SvgPicture.asset(AppAssets.googleIcon),
                const SizedBox(
                  width: 13,
                ),
                SvgPicture.asset(AppAssets.lnIcon),
              ],
            ),
            const SizedBox(
              height: 103,
            )
          ],
        )),
      ),
    );
  }
}
