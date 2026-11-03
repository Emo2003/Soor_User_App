import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/color_manager.dart';
import '../../../core/themes/style_manager.dart';

class ServiceRow extends StatelessWidget {
  const ServiceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Text(
          "Services".tr(),
          style: StyleManager.title.copyWith(fontSize: 16.sp),
        ),
        const Spacer(),
        Row(
          children: [
            Text(
              "See All".tr(),
              style: StyleManager.yellowText.copyWith(
                fontSize: 12.sp,
              ),
            ),
            10.horizontalSpace,
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: ColorManager.yellow,
              size: 10.sp,
            ),
          ],
        ),
      ],
    );
  }
}
