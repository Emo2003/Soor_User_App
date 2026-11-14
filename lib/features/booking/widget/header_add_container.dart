import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/themes/color_manager.dart';
import '../../../core/themes/style_manager.dart';

class HeaderAddContainer extends StatelessWidget {
  final String title;

  const HeaderAddContainer({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.mediumGray,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Column(
        children: [
          5.verticalSpace,
          Container(
            width: 40.w,
            height: 3.h,
            decoration: BoxDecoration(
              color: ColorManager.lightGray,
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),

          Row(
            children: [
              Text(title.tr(), style: StyleManager.mediumTitle),
              const Spacer(),

              IconButton(
                onPressed: () => context.pop(),
                icon: Icon(Icons.close, color: ColorManager.white, size: 24.sp),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
