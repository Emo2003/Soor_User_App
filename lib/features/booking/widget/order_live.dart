import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/const/assets_manager.dart';
import 'package:soor_app/core/themes/style_manager.dart';

import '../../../core/themes/color_manager.dart';

class OrderLive extends StatelessWidget {
  const OrderLive({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.darkGray, width: 1.5.w),
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Order Tracking".tr(),
            style: StyleManager.whiteText.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          20.verticalSpace,
          const _OrderTackState(),
          const _OrderTackState(isDone: true),
          const _OrderTackState(isLast: false),
        ],
      ),
    );
  }
}

class _OrderTackState extends StatelessWidget {
  final bool isLast;
  final bool isDone;

  const _OrderTackState({ this.isLast = true, this.isDone = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 42.w,
              height: 42.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: ColorManager.darkBlue,
                shape: BoxShape.circle,
              ),
              child: isDone
                  ? Container(
                      width: 27.w,
                      height: 27.w,
                      decoration: BoxDecoration(
                        color: ColorManager.babyBlue,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.circle,
                        size: 10.sp,
                        color: ColorManager.white,
                      ),
                    )
                  : Image.asset(AssetsManager.tick),
            ),
            isLast
                ? Container(
                    width: 3.w,
                    height: 45.h,
                    color: ColorManager.babyBlue,
                  )
                : SizedBox.shrink(),
          ],
        ),
        20.horizontalSpace,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Acceptance by the Guards".tr(),
                style: StyleManager.title.copyWith(
                  color: ColorManager.darkBlue,
                  fontSize: 18.sp,
                ),
              ),
              Text(
                "Enter the description here".tr(),
                style: StyleManager.hintText.copyWith(fontSize: 14.sp),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
