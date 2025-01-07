import 'package:flutter/material.dart';

import '../../shared/app_colors.dart';
import '../pages/light_mode_page.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({
    super.key,
  });

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  int weight = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 175,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Weight',
            style: TextStyle(
                fontSize: 15,
                fontFamily: "Poppins,",
                color: AppColors.heightColor,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "$weight",
            style: const TextStyle(
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
              SignContainer(
                icon: Icons.remove,
                onpress: () {
                  setState(() {
                    weight--;
                  });
                },
              ),
              const SizedBox(
                width: 45,
              ),
              SignContainer(
                  icon: Icons.add,
                  onpress: () {
                    setState(() {
                      weight++;
                    });
                  })
            ],
          )
        ],
      ),
    );
  }
}
