import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/color_manager.dart';
import '../../../../core/themes/style_manager.dart';

class OtpTimer extends StatelessWidget {
  final String time;

  const OtpTimer({
    super.key,
    this.time = "01:00",
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          time,
          style: StyleManager.subtitle,
        ),
        5.horizontalSpace,
        Icon(
          Icons.access_time_rounded,
          color: ColorManager.white,
          size: 17.sp,
        ),
      ],
    );
  }
}