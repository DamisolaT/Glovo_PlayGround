import 'package:flutter/material.dart';
import 'package:glovo_assign1/features/shared/app_colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../navigation/route_strings.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  double percentageValue = 0.0;

  double part = 40;
  double total = 100;

  @override
  void initState() {
    super.initState();
    calculatePercentage();
  }

  void calculatePercentage() {
    if (total != 0) {
      setState(() {
        percentageValue = part / total;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bmiColor,
      appBar: AppBar(
        backgroundColor: AppColors.bmiColor,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34),
          child: GestureDetector(
            onTap: () =>
                Navigator.pushNamed(context, AppRouteStrings.lightModeScreen),
            child: const Text(
              "Back",
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: "Poppins",
                  color: AppColors.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 34),
              child: Text(
                "Your BMI is",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                    color: AppColors.bmiBlueColor),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: CircularPercentIndicator(
                animationDuration: 1000,
                footer: const Text(
                  "Underweight",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: AppColors.bmiBlueColor),
                ),
                radius: 140,
                lineWidth: 30,
                animation: true,
                percent: percentageValue,
                progressColor: AppColors.white,
                backgroundColor: AppColors.bmiBlueColor,
                circularStrokeCap: CircularStrokeCap.round,
                center: Text(
                  (percentageValue * 100).toStringAsFixed(1),
                  style: const TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      color: AppColors.bmiBlueColor),
                ),
              ),
            ),
            const SizedBox(height: 36),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Your BMI is ${(percentageValue * 100).toStringAsFixed(1)}, indicating your weight is in the Normal category for adults of your height. For your height, a normal weight range would be from 53.5 to 72 kilograms. Maintaining a healthy weight may reduce the risk of chronic diseases associated with overweight and obesity.",
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
