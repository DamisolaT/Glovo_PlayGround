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
    return AppBar(
      backgroundColor: AppColors.appBG,
      title: const Padding(
        padding: EdgeInsets.only(left: 45),
        child: Text(
          "CodeChamp.in",
          style: TextStyle(
            fontFamily: "Jockey",
            fontSize: 32,
            color: AppColors.white,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 34),
          child: IconButton(
            icon: SvgPicture.asset(
              AppAssets.menuIcon,
              height: 40,
              width: 40,
            ),
            onPressed: () {
              // Add the desired action here
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
