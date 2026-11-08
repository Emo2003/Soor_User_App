import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/core/themes/style_manager.dart';

class BookingDetailsContainer extends StatelessWidget {
  const BookingDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.darkGray, width: 1.5.w),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "Booking Details".tr(),
                  style: StyleManager.hintText,
                ),
              ),
              Text(
                "1600 Riyal".tr(),
                style: StyleManager.yellowText.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          10.verticalSpace,
          Row(
            children: [
              Expanded(
                child: Text(
                  "Booking start date and time".tr(),
                  style: StyleManager.hintText,
                ),
              ),
              Text("NumGuards".tr(), style: StyleManager.hintText),
            ],
          ),
          10.verticalSpace,
          Row(
            children: [
              Expanded(
                child: Text(
                  "260/10/2022  3:00 pm",
                  style: StyleManager.whiteText.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text("3 individuals".tr(), style: StyleManager.hintText),
            ],
          ),
          10.verticalSpace,
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text("Show more".tr(), style: StyleManager.whiteText),
                      10.horizontalSpace,
                      Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: ColorManager.white,
                        size: 25.sp,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 10.w),
                decoration: BoxDecoration(
                  color: ColorManager.orange,
                  borderRadius: BorderRadius.circular(25.r),
                ),
                child: Text(
                  "The Guard's Arrival".tr(),
                  style: StyleManager.whiteText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
