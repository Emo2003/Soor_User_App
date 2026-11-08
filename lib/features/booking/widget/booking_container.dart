import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/style_manager.dart';

import '../../../core/themes/color_manager.dart';

class BookingContainer extends StatelessWidget {
  final Function() onTap;

  const BookingContainer({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        padding: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
          color: ColorManager.darkGray,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "#123456",
                    style: StyleManager.whiteText.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 2.h,
                  ),
                  decoration: BoxDecoration(
                    color: ColorManager.darkBlue,
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  child: Text("Finished".tr(), style: StyleManager.whiteText),
                ),
              ],
            ),
            10.verticalSpace,
            Row(
              children: [
                Expanded(
                  child: Text(
                    "1600 Riyal".tr(),
                    style: StyleManager.yellowText.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  "Today 8:00 PM – 11:00 PM".tr(),
                  style: StyleManager.hintText.copyWith(fontSize: 14.sp),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
