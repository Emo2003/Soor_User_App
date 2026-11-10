import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/features/orders/widget/calender_text_field.dart';

import '../../../core/themes/color_manager.dart';

class OrderDetailsContainer extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  OrderDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: ColorManager.darkGray, width: 1.5.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Booking Details".tr(), style: StyleManager.hintText),
          10.verticalSpace,
          Text(
            "Booking start date and time".tr(),
            style: StyleManager.whiteText,
          ),
          12.verticalSpace,
          CalenderTextField(controller: controller),
        ],
      ),
    );
  }
}
