import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/style_manager.dart';

import '../../../../core/themes/color_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("English", style: StyleManager.yellowText),
      titleSpacing: 0.w,
      backgroundColor: ColorManager.primary,
      leading: IconButton(
        icon: const Icon(
          Icons.language_outlined,
          color: ColorManager.yellow,
          size: 25,
        ),
        onPressed: () {},
      ),
      actions: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: ColorManager.darkGray,
            borderRadius: BorderRadius.circular(25),
          ),
          margin: const EdgeInsets.only(right: 10),
          child: Image.asset("assets/images/x.png"),
        ),
      ],
    );
  }
}
