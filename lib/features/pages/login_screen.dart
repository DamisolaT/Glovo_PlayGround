import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:glovo_assign1/features/common/app_button.dart';
import 'package:glovo_assign1/features/common/custom_app_bar.dart';

import '../common/textformfield.dart';
import '../navigation/route_strings.dart';
import '../shared/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool hidePassword = true;
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBG,
      appBar: const CustomAppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 53),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 66,
              ),
              const Text(
                "Welcome Back!",
                style: TextStyle(
                    fontFamily: "Jockey",
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Login to continue",
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 52,
              ),
              const Text(
                "Username",
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.white
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              TextInputWidget(
                controller: _userNameController,
                textInputType: TextInputType.name,
              ),
              const SizedBox(
                height: 52,
              ),
              const Text(
                "Password",
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 12,
              ),
              TextInputWidget(
                controller: _passwordController,
                obscureText: hidePassword,
              ),
              const SizedBox(
                height: 27,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                      fillColor: WidgetStateProperty.all(AppColors.inputColor),
                      value: selected,
                      onChanged: (value) {
                        setState(() {
                          selected = !selected;
                        });
                      }),
                  const Text(
                    "Remember me",
                    style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: AppColors.white),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  const Text(
                    "Forget password?",
                    style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: AppColors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 58,
              ),
              AppButtons(
                buttonText: "Login",
                onPressed: () {
                  Navigator.pushNamed(context, AppRouteStrings.signUpScreen);
                },
              ),
              const SizedBox(
                height: 27,
              ),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Don’t have an account? ",
                    style: const TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: AppColors.white,
                    ),
                    children: [
                      TextSpan(
                        text: "Sign Up",
                        style: const TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: AppColors.buttonColor,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 216,
              )
            ],
          ),
        ),
      )),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _userNameController.dispose();
    _passwordController.dispose();
  }
}
