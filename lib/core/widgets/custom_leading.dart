import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/color_manager.dart';

class CustomLeading extends StatelessWidget {
  final VoidCallback? onBackPressed;

  const CustomLeading({super.key, this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7.w),
      decoration: BoxDecoration(
        color: ColorManager.darkGray,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: Icon(
          Icons.arrow_back_outlined,
          color: ColorManager.white,
          size: 20.sp,
        ),
        onPressed: () {
          onBackPressed?.call();
        },
      ),
    );
  }
}
