import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/const/assets_manager.dart';
import '../../../core/themes/color_manager.dart';

class SendContainer extends StatelessWidget {
  const SendContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.h,
      decoration: BoxDecoration(color: ColorManager.primary),
      padding: EdgeInsets.symmetric(horizontal: 10.sp),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              textInputAction: TextInputAction.send,
              decoration: InputDecoration(
                hintText: "type_message".tr(),
                filled: true,
                fillColor: ColorManager.darkGray,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.sp),
                  borderSide: BorderSide.none,
                ),
              ),
              cursorColor: ColorManager.white,
            ),
          ),
          10.horizontalSpace,
          GestureDetector(
            onTap: () {
              // Handle send button tap
            },
            child: Container(
              height: 40.h,
              width: 45.w,
              decoration: BoxDecoration(
                color: ColorManager.secondary,
                borderRadius: BorderRadius.circular(8.sp),
              ),
              child: Image.asset(
                AssetsManager.send,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
