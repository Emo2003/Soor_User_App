import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_manager.dart';

class StyleManager {
  StyleManager._();

  static TextStyle yellowText = TextStyle(
    color: ColorManager.yellow,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle title = TextStyle(
    color: ColorManager.white,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle subtitle = TextStyle(
    color: ColorManager.gray,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle whiteText = TextStyle(
    color: ColorManager.white,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle hintText = TextStyle(
    color: ColorManager.lightGray,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
}
