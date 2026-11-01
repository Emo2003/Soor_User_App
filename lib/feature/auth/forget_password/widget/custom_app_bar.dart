import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/color_manager.dart';

class CustomForgetAppBar extends StatelessWidget {
  final Function() onPressed;

  const CustomForgetAppBar({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.primary,
      leading: Container(
        width: 45.w,
        height: 45.h,
        margin: EdgeInsets.only(left: 15.w),
        decoration: BoxDecoration(
          color: ColorManager.darkGray,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(
            Icons.arrow_back_outlined,
            color: ColorManager.white,
            size: 25.sp,
          ),
          onPressed: () {
            onPressed();
          },
        ),
      ),
    );
  }
}
