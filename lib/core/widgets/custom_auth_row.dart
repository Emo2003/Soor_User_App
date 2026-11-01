import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/style_manager.dart';

class CustomAuthRow extends StatelessWidget {
  final String text1;
  final String text2;
  final Function() onPressed;

  const CustomAuthRow({
    super.key,
    required this.text1,
    required this.text2,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: StyleManager.hintText.copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),

          5.horizontalSpace,

          GestureDetector(
            onTap: () {
              onPressed();
            },
            child: Text(
              text2,
              style: StyleManager.yellowText.copyWith(fontSize: 14.sp),
            ),
          ),
        ],
      ),
    );
  }
}
