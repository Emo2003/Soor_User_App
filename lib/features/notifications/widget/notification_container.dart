import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/const/dummy_data.dart';

import '../../../core/const/assets_manager.dart';
import '../../../core/themes/color_manager.dart';
import '../../../core/themes/style_manager.dart';

class NotificationContainer extends StatelessWidget {
  final bool isNewNotification;
  final NotificationModel notification;

  const NotificationContainer({
    super.key,
    this.isNewNotification = false,
    required this.notification,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: ColorManager.darkGray,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: ColorManager.mediumGray,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(AssetsManager.soorYellow),
              ),
              if (isNewNotification)
                Positioned(
                  top: 0,
                  right: 5.sp,
                  bottom: 25.sp,
                  child: Container(
                    width: 10.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                      color: ColorManager.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
            ],
          ),
          10.horizontalSpace,
          Column(
            children: [
              Text(
                notification.title.tr(),
                style: StyleManager.mediumTitle.copyWith(fontSize: 16.sp),
              ),
              3.verticalSpace,
              Text(notification.content.tr(), style: StyleManager.subtitle),
            ],
          ),
          const Spacer(),
          Column(children: [Text("12:02", style: StyleManager.hintText)]),
        ],
      ),
    );
  }
}
