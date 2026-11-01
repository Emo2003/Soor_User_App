import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/style_manager.dart';

import '../../../../core/themes/color_manager.dart';

class OtpField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode focusNode;
  final ValueChanged<String>? onChanged;

  const OtpField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.w,
      height: 45.h,
      child: TextField(
        expands: true,
        maxLines: null,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        focusNode: focusNode,
        onChanged: onChanged,
        controller: controller,
        cursorColor: ColorManager.white,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        style: StyleManager.title.copyWith(fontSize: 24.sp),
        decoration: InputDecoration(
          constraints: BoxConstraints.tightFor(height: 45.h, width: 50.w),
          counterText: "",
          filled: true,
          fillColor: ColorManager.darkGray,
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
