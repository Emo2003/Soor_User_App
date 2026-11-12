
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/style_manager.dart';

import '../../../../core/themes/color_manager.dart';

class TimeOptionChip extends StatelessWidget {
  final String time;
  final bool isSelected;
  final VoidCallback onTap;

  const TimeOptionChip({
    super.key,
    required this.time,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(25.r),
      child: Container(
        padding:  EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 7.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: isSelected
                ? ColorManager.secondary
                : ColorManager.lightGray,
            width: 1.w,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isSelected) ...[
               Icon(
                Icons.check,
                color: ColorManager.secondary,
                size: 15.sp,
              ),
              10.horizontalSpace,
            ],
            Text(
              time,
              style: StyleManager.whiteText,
            ),
          ],
        ),
      ),
    );
  }
}
