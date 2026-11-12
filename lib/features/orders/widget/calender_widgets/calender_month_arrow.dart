
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/color_manager.dart';

class CalenderMonthArrow extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const CalenderMonthArrow({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        width: 30.w,
        height: 30.h,
        decoration: const BoxDecoration(
          color: ColorManager.secondary,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: ColorManager.white,
          size: 26.sp,
        ),
      ),
    );
  }
}
