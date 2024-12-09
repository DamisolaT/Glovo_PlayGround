import 'package:flutter/material.dart';
import 'package:glovo_assign1/features/common/app_button.dart';
import 'package:glovo_assign1/features/common/custom_app_bar.dart';

import '../common/textformfield.dart';
import '../shared/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneNumberController = TextEditingController();

  bool hidePassword = true;
  bool selected = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBG,
      appBar: const CustomAppBar(),
      body: Form(
        key: _formKey,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 69,
                ),
                const Text(
                  "Create Account Now!",
                  style: TextStyle(
                      fontFamily: "Jockey",
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      height: 1.3),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
                const SizedBox(
                  height: 46,
                ),
                const Text(
                  "Full Name",
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
                  controller: _fullNameController,
                  textInputType: TextInputType.name,
                ),
                const SizedBox(
                  height: 41,
                ),
                const Text(
                  "Email",
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
                    controller: _emailController,
                    textInputType: TextInputType.emailAddress,
                    validator: (input) {
                      return "invalid email";
                    }),
                const SizedBox(
                  height: 37,
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
                TextInputWidget(
                  controller: _passwordController,
                  obscureText: hidePassword,
                ),
                const SizedBox(
                  height: 37,
                ),
                const Text(
                  "Phone No ",
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
                  controller: _phoneNumberController,
                  textInputType: TextInputType.phone,
                ),
                const SizedBox(
                  height: 54,
                ),
                AppButtons(
                  buttonText: "Sign Up",
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {}
                    // Navigator.pushNamed(context, AppRouteStrings.signUpScreen);
                  },
                ),
                const SizedBox(
                  height: 27,
                ),
                const SizedBox(
                  height: 216,
                )
              ],
            ),
          ),
        )),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _fullNameController.dispose();
    _passwordController.dispose();
    _fullNameController.dispose();
    _phoneNumberController.dispose();
  }
}
