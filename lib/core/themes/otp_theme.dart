import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/themes/color_manager.dart';
import '../../../../core/themes/style_manager.dart';

class OtpTheme {
  OtpTheme._();

  static final PinTheme defaultPinTheme = PinTheme(
    width: 50.w,
    height: 45.h,
    textStyle: StyleManager.title.copyWith(fontSize: 20.sp),
    decoration: BoxDecoration(
      color: ColorManager.darkGray,
      borderRadius: BorderRadius.circular(8.r),
    ),
  );

  static final PinTheme focusedPinTheme = defaultPinTheme;
}
