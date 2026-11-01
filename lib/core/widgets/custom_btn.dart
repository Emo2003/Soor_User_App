import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/color_manager.dart';
import '../themes/style_manager.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const CustomBtn({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        backgroundColor: ColorManager.secondary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        minimumSize: Size(double.infinity, 40.h),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: StyleManager.whiteText.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          10.horizontalSpace,
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: ColorManager.white,
            size: 17.sp,
          ),
        ],
      ),
    );
  }
}
