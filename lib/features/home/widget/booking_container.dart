import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/core/themes/style_manager.dart';

class BookingContainer extends StatelessWidget {
  const BookingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 7.h),
      decoration: BoxDecoration(
        color: ColorManager.darkGray,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "#123456",
                style: StyleManager.whiteText.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: ColorManager.green,
                  borderRadius: BorderRadius.circular(25.r),
                ),
                child: Text("Finished".tr(), style: StyleManager.whiteText),
              ),
            ],
          ),
          10.verticalSpace,
          Row(
            children: [
              Text(
                "1600 Riyal".tr(),
                style: StyleManager.yellowText.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              Spacer(),
              Text(
                "Today 8:00 PM – 11:00 PM".tr(),
                style: StyleManager.hintText.copyWith(fontSize: 14.sp),
              ),
            ],
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 7.w,
              children: [
                Text(
                  "Add Review".tr(),
                  style: StyleManager.subtitle.copyWith(
                    color: ColorManager.babyBlue,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: ColorManager.babyBlue,
                  size: 15.sp,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
