import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/color_manager.dart';
import '../../../core/themes/style_manager.dart';

class PaymentMethodContainer extends StatelessWidget {
  const PaymentMethodContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: ColorManager.darkGray, width: 1.5.w),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Payment Methods".tr(),
              style: StyleManager.whiteText.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
              ),
            ),
          ),
          Text(
            "Visa",
            style: StyleManager.whiteText.copyWith(
              color: ColorManager.babyBlue,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
