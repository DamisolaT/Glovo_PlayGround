import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glovo_assign1/features/shared/app_colors.dart';
import 'package:glovo_assign1/features/shared/assets.dart';

import '../../navigation/route_strings.dart';
import '../widget/age_selector.dart';
import '../widget/height_selector.dart';
import '../widget/vertical_progressor_bar.dart';

class LightModePage extends StatefulWidget {
  const LightModePage({super.key});

  @override
  State<LightModePage> createState() => _LightModePageState();
}

class _LightModePageState extends State<LightModePage> {
  bool isFemale = false;
  bool isMale = false;

  double _sliderValue = 50;
  int weight = 12;
  int age = 12;
  double height = 100;
  double? bmi;

  void genderHandle(String gender) {
    setState(() {
      if (gender == 'male') {
        isMale = true;
        isFemale = false;
      } else if (gender == 'female') {
        isMale = false;
        isFemale = true;
      }
    });
  }

  void CalculateBMI() {
    var heightInMeters = height / 100;
    bmi = weight / (heightInMeters * heightInMeters);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bmiColor,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 132),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "BMI Calculator",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: AppColors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 49,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => genderHandle("male"),
                      child: Container(
                        height: 50,
                        width: 175,
                        decoration: BoxDecoration(
                            color: isMale
                                ? AppColors.bmiBlueColor
                                : AppColors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppAssets.maleIcon,
                                height: 16,
                                width: 16,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Poppins",
                                    color: isMale
                                        ? AppColors.white
                                        : AppColors.bmiBlueColor),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => genderHandle('female'),
                      child: Container(
                        height: 50,
                        width: 175,
                        decoration: BoxDecoration(
                            color: isFemale
                                ? AppColors.bmiBlueColor
                                : AppColors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppAssets.femaleIcon,
                                height: 16,
                                width: 16,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Poppins",
                                    color: isFemale
                                        ? AppColors.white
                                        : AppColors.bmiBlueColor),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 466,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.white),
                      child: Row(
                        children: [
                          Expanded(
                              child: VerticalSlider(
                            value: _sliderValue,
                            onChanged: (double value) {
                              setState(() {
                                _sliderValue = value;
                              });
                            },
                          )),
                          Expanded(
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Height",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: "Poppins,",
                                        color: AppColors.heightColor,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    _sliderValue.toStringAsFixed(1),
                                    style: const TextStyle(
                                        fontSize: 35,
                                        fontFamily: "Poppins,",
                                        color: AppColors.black,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  const Expanded(
                    child: Column(
                      children: [
                        HeightSelector(),
                        SizedBox(
                          height: 26,
                        ),
                        AgeSelector(),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 56,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    CalculateBMI();
                  });
                  Navigator.pushNamed(context, AppRouteStrings.carouselScreen);
                },
                child: Container(
                  height: 50,
                  width: 379,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.bmiBlueColor),
                  child: const Center(
                    child: Text(
                      "Lets Go",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 15,
                          color: AppColors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}

class SignContainer extends StatelessWidget {
  const SignContainer({
    super.key,
    required this.icon,
    required this.onpress,
  });
  final VoidCallback onpress;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 42,
        width: 42,
        decoration: BoxDecoration(
            color: AppColors.bmiBlueColor,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Icon(
            icon,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
