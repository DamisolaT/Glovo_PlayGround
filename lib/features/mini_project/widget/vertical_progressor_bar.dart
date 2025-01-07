import 'package:flutter/material.dart';
import 'package:glovo_assign1/features/shared/app_colors.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class VerticalSlider extends StatelessWidget {
  const VerticalSlider({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final double value;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return SfSlider.vertical(
      min: 0,
      max: 100,
      value: value,
      interval: 20,
      showTicks: false,
      showLabels: false,
      activeColor: AppColors.bmiBlueColor,
      inactiveColor: AppColors.heightColor,
      onChanged: (dynamic newValue) {
        onChanged(newValue as double);
      },
    );
  }
}
