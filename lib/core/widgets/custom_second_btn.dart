import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/color_manager.dart';
import '../themes/style_manager.dart';

class CustomSecondBtn extends StatelessWidget {
  final Function() onPressed;
  final String text;

  const CustomSecondBtn({
    super.key,
    required this.onPressed,
    required this.text,
  });

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
      child: Text(
        text.tr(),
        style: StyleManager.whiteText.copyWith(
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
