import 'package:flutter/material.dart';
import 'package:glovo_assign1/features/shared/app_colors.dart';

class VerticalProgressBar extends StatelessWidget {
  final double progress;

  const VerticalProgressBar({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 374,
              width: 19,
              decoration: BoxDecoration(
                color: AppColors.bmiColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              height: 374 * progress,
              width: 19,
              decoration: BoxDecoration(
                  color: AppColors.bmiBlueColor,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ],
        ),
      ],
    );
  }
}
