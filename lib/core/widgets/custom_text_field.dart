
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/color_manager.dart';
import '../themes/style_manager.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool isObscured;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.isObscured = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool isPasswordHidden;

  @override
  void initState() {
    super.initState();
    isPasswordHidden = widget.isObscured;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ColorManager.white,
      scrollPadding: EdgeInsets.zero,
      style: StyleManager.hintText,
      obscureText: isPasswordHidden,
      decoration: InputDecoration(
        constraints: BoxConstraints(
          minHeight: 37.h,
          maxHeight: 37.h,
        ),
        suffixIcon: widget.isObscured
            ? IconButton(
          icon: Icon(
            isPasswordHidden
                ? Icons.visibility_off
                : Icons.visibility,
            color: ColorManager.gray,
          ),
          onPressed: () {
            setState(() {
              isPasswordHidden = !isPasswordHidden;
            });
          },
        )
            : null,
        hintText: widget.hintText,
        filled: true,
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
      ),
    );
  }
}
