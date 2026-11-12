import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/const/assets_manager.dart';
import '../../../core/themes/color_manager.dart';
import '../../../core/themes/style_manager.dart';

class UserDataContainer extends StatelessWidget {
  const UserDataContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.sp),
      decoration: BoxDecoration(
        color: ColorManager.darkBlue,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        spacing: 15.w,
        children: [
          Container(
            decoration: BoxDecoration(
              color: ColorManager.babyBlue,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              AssetsManager.person,
              color: ColorManager.gray,
              width: 40.w,
              height: 40.h,
            ),
          ),
          Expanded(
            child: Column(
              spacing: 3.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "John Doe",
                  style: StyleManager.whiteText.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text("+966000000000", style: StyleManager.hintText),
              ],
            ),
          ),

          Image.asset(AssetsManager.edit),
        ],
      ),
    );
  }
}
