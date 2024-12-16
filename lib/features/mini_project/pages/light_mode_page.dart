import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glovo_assign1/features/mini_project/widget/vertical_progressor_bar.dart';
import 'package:glovo_assign1/features/shared/app_colors.dart';
import 'package:glovo_assign1/features/shared/assets.dart';

class LightModePage extends StatelessWidget {
  const LightModePage({super.key});

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
                    child: Container(
                      height: 50,
                      width: 175,
                      decoration: BoxDecoration(
                          color: AppColors.bmiBlueColor,
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
                            const Text(
                              "Male",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                  color: AppColors.white),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 175,
                      decoration: BoxDecoration(
                          color: AppColors.white,
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
                            const Text(
                              "Female",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                  color: AppColors.bmiBlueColor),
                              textAlign: TextAlign.center,
                            )
                          ],
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
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18),
                            child: VerticalProgressBar(progress: 0.6),
                          ),
                          Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Height",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: "Poppins,",
                                      color: AppColors.heightColor,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "70",
                                  style: TextStyle(
                                      fontSize: 64,
                                      fontFamily: "Poppins,",
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: 175,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Weight",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Poppins,",
                                    color: AppColors.heightColor,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "70",
                                style: TextStyle(
                                    fontSize: 64,
                                    fontFamily: "Poppins,",
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SignContainer(icon: Icons.remove),
                                  SizedBox(
                                    width: 45,
                                  ),
                                  SignContainer(icon: Icons.add)
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 26,
                        ),
                        Container(
                          height: 220,
                          width: 175,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Age",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Poppins,",
                                    color: AppColors.heightColor,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "23",
                                style: TextStyle(
                                    fontSize: 64,
                                    fontFamily: "Poppins,",
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SignContainer(icon: Icons.remove),
                                  SizedBox(
                                    width: 45,
                                  ),
                                  SignContainer(icon: Icons.add)
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 56,
              ),
              Container(
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
  });

  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 42,
      decoration: BoxDecoration(
          color: AppColors.bmiBlueColor,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Icon(
          icon ?? Icons.remove,
          color: AppColors.white,
        ),
      ),
    );
  }
}
