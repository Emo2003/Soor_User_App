import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/style_manager.dart';

import '../../../core/themes/color_manager.dart';

class UserServiceContainer extends StatelessWidget {
  final String title;
  final bool isLanguageChangeEnabled;
  final String iconPath;
  final VoidCallback onTap;

  const UserServiceContainer({
    super.key,
    required this.title,
    this.isLanguageChangeEnabled = false,
    required this.iconPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.sp, vertical: 5.sp),
      decoration: BoxDecoration(
        color: ColorManager.primary,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          ListTile(
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (isLanguageChangeEnabled)
                  Text(
                    "English".tr(),
                    style: StyleManager.yellowText.copyWith(
                      fontSize: 14.sp,
                      color: ColorManager.yellow,
                    ),
                  ),
                10.horizontalSpace,
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: isLanguageChangeEnabled
                      ? ColorManager.yellow
                      : ColorManager.lightGray,
                  size: 16.sp,
                ),
              ],
            ),
            leading: Image.asset(iconPath, color: ColorManager.lightGray),
            title: Text(title.tr(), style: StyleManager.whiteText),
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
