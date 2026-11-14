import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/style_manager.dart';

class PolicyText extends StatelessWidget {
  final String title;
  final String content;

  const PolicyText({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.h,
        children: [
          Text(
            title,
            style: StyleManager.whiteText.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            content,
            style: StyleManager.whiteText.copyWith(fontSize: 15.sp),
          ),
        ],
      ),
    );
  }
}
