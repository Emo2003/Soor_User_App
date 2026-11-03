import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/style_manager.dart';

import '../../../core/widgets/custom_second_btn.dart';

class BottomContainer extends StatelessWidget {
  final VoidCallback? onConfirm;

  const BottomContainer({super.key, this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF151515),
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Riyadh, Saudi Arabia".tr(),
            textAlign: TextAlign.right,
            style: StyleManager.whiteText.copyWith(fontWeight: FontWeight.w600),
          ),

          5.verticalSpace,

          Text(
            "Address Coordinates on the Map".tr(),
            textAlign: TextAlign.right,
            style: StyleManager.subtitle.copyWith(fontSize: 12.sp),
          ),

          12.verticalSpace,
          CustomSecondBtn(
            onPressed: () {
              onConfirm?.call();
            },
            text: 'Save'.tr(),
          ),
        ],
      ),
    );
  }
}
