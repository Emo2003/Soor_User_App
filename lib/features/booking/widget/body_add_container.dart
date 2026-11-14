import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/color_manager.dart';
import '../../../core/themes/style_manager.dart';
import '../../../core/widgets/custom_second_btn.dart';

class BodyAddContainer extends StatelessWidget {
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final int count;
  final VoidCallback onConfirm;

  const BodyAddContainer({
    super.key,
    required this.onIncrement,
    required this.onDecrement,
    required this.count,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      decoration: BoxDecoration(color: ColorManager.primary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "service_duration_per_hour".tr(),
            style: StyleManager.mediumTitle,
          ),
          10.verticalSpace,
          Container(
            padding: EdgeInsets.all(2.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: ColorManager.darkGray, width: 1.5.w),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: onIncrement,
                  icon: Icon(Icons.add, color: ColorManager.white),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      count.toString(),
                      style: StyleManager.whiteText,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: onDecrement,
                  icon: Icon(Icons.remove_rounded, color: ColorManager.white),
                ),
              ],
            ),
          ),
          10.verticalSpace,
          Padding(
            padding: EdgeInsets.only(bottom: 15.h),
            child: SizedBox(
              width: double.infinity,
              child: CustomSecondBtn(
                onPressed: onConfirm,
                text: "Confirm",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
