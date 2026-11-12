
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/core/themes/style_manager.dart';

class CalenderHeader extends StatelessWidget {
  const CalenderHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      decoration: BoxDecoration(
        color: ColorManager.mediumGray,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(12.r),
        ),
      ),
      child: Row(
        children: [
          Text(
            'choose_date'.tr(),
            style: StyleManager.whiteText,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => context.pop(),
            child: Icon(
              Icons.close,
              color: ColorManager.white,
              size: 20.sp,
            ),
          ),
        ],
      ),
    );
  }
}
