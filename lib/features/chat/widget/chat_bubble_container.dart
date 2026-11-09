import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/const/assets_manager.dart';
import '../../../core/themes/color_manager.dart';
import '../../../core/themes/style_manager.dart';

class ChatBubbleContainer extends StatelessWidget {
  final String message;
  final bool isSender;
  final String userName;
  final String userImage;

  const ChatBubbleContainer({
    super.key,
    required this.message,
    this.isSender = false,
    required this.userName,
    required this.userImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100.h,
          decoration: BoxDecoration(
            color: isSender ? ColorManager.darkGray : ColorManager.darkBlue,
            borderRadius: isSender
                ? BorderRadius.only(
                    topRight: Radius.circular(16.r),
                    topLeft: Radius.circular(8.r),
                    bottomLeft: Radius.circular(8.r),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(8.r),
                    topLeft: Radius.circular(16.r),
                    bottomRight: Radius.circular(8.r),
                  ),
          ),
          child: Row(
            children: [
              Container(
                decoration: isSender
                    ? BoxDecoration(
                        color: ColorManager.mediumGray,
                        borderRadius: BorderRadius.circular(25.r),
                      )
                    : BoxDecoration(
                        color: ColorManager.babyBlue,
                        shape: BoxShape.circle,
                      ),
                padding: EdgeInsets.all(12.sp),
                margin: EdgeInsets.symmetric(horizontal: isSender ? 10.w : 5.w),
                child: Image.asset(userImage, fit: BoxFit.cover),
              ),
              10.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.verticalSpace,
                  Text(
                    userName.tr(),
                    style: isSender
                        ? StyleManager.hintText.copyWith(
                            fontWeight: FontWeight.w600,
                          )
                        : StyleManager.hintText.copyWith(
                            fontWeight: FontWeight.w600,
                            color: ColorManager.lightBlue,
                          ),
                  ),
                  5.verticalSpace,
                  Text(message.tr(), style: StyleManager.whiteText),
                ],
              ),
            ],
          ),
        ),
        10.verticalSpace,
        Align(
          alignment: isSender ? Alignment.centerLeft : Alignment.centerRight,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "09:30",
                style: StyleManager.hintText.copyWith(
                  fontSize: 12.sp,
                  color: ColorManager.lightGray,
                ),
              ),
              5.horizontalSpace,
              Image.asset(AssetsManager.doubleCheck),
            ],
          ),
        ),
      ],
    );
  }
}
