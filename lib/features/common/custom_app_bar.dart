import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../shared/app_colors.dart';
import '../shared/assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: AppBar(
        backgroundColor: AppColors.appBG,
        automaticallyImplyLeading: false,
        title: const Text(
          "CodeChamp.in",
          style: TextStyle(
            fontFamily: "Jockey",
            fontSize: 30,
            color: AppColors.white,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              AppAssets.menuIcon,
              height: 40,
              width: 40,
            ),
            onPressed: () {
              // Add the desired action here
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
