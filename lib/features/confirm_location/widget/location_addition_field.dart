import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/color_manager.dart';
import '../../../core/themes/style_manager.dart';

class LocationAdditionField extends StatelessWidget {
  final String hintText;

  const LocationAdditionField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ColorManager.white,
      scrollPadding: EdgeInsets.zero,
      style: StyleManager.hintText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        constraints: BoxConstraints(maxHeight: 50.h),
        filled: true,
        hintText: hintText,
        hintStyle: StyleManager.hintText,
        fillColor: ColorManager.darkGray,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: ColorManager.mediumGray, width: 1.w),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: ColorManager.mediumGray, width: 1.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: ColorManager.mediumGray, width: 1.w),
        ),
        errorStyle: TextStyle(color: Colors.redAccent, fontSize: 12.sp),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Colors.redAccent, width: 1.w),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Colors.redAccent, width: 1.w),
        ),
      ),
    );
  }
}
