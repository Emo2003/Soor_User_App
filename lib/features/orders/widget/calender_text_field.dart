import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/const/assets_manager.dart';
import '../../../core/themes/color_manager.dart';
import '../../../core/themes/style_manager.dart';

class CalenderTextField extends StatelessWidget {
  final TextEditingController controller;
  const CalenderTextField({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {},
      controller: controller,
      cursorColor: ColorManager.white,
      scrollPadding: EdgeInsets.zero,
      style: StyleManager.hintText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 5.h,
        ),
        constraints: BoxConstraints(maxHeight: 50.h),
        hintText: "enter_booking_date".tr(),
        filled: true,
        prefixIcon: Padding(
          padding: EdgeInsets.all(10.sp),
          child: SvgPicture.asset(
            AssetsManager.calender,
            width: 10.w,
            height: 10.h,
          ),
        ),
        hintStyle: StyleManager.hintText,
        fillColor: ColorManager.darkGray,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: ColorManager.mediumGray,
            width: 1.w,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: ColorManager.mediumGray,
            width: 1.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: ColorManager.mediumGray,
            width: 1.w,
          ),
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
