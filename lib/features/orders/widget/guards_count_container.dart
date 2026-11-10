import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/color_manager.dart';
import '../../../core/themes/style_manager.dart';

class GuardsCountContainer extends StatelessWidget {
  final int guardsCount;
  final int serviceDuration;

  final VoidCallback incrementGuards;
  final VoidCallback decrementGuards;

  final VoidCallback incrementDuration;
  final VoidCallback decrementDuration;

  const GuardsCountContainer({
    super.key,
    required this.guardsCount,
    required this.incrementDuration,
    required this.decrementGuards,
    required this.decrementDuration,
    required this.incrementGuards,
    required this.serviceDuration,
  });

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
          Text("number_and_duration".tr(), style: StyleManager.hintText),
          10.verticalSpace,
          Text("required_guards_count".tr(), style: StyleManager.whiteText),
          12.verticalSpace,
          _CountContainer(
            count: guardsCount,
            increment: incrementGuards,
            decrement: decrementGuards,
          ),
          7.verticalSpace,
          Row(
            children: [
              Text(
                "service_duration_hours".tr(),
                style: StyleManager.whiteText,
              ),
              5.horizontalSpace,
              Text("(3 Hours Minimum)".tr(), style: StyleManager.hintText),
            ],
          ),
          12.verticalSpace,
          _CountContainer(
            increment: incrementDuration,
            decrement: decrementDuration,
            count: serviceDuration,
          ),
        ],
      ),
    );
  }
}

class _CountContainer extends StatelessWidget {
  final VoidCallback increment;
  final VoidCallback decrement;
  final int count;

  const _CountContainer({
    required this.decrement,
    required this.increment,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: ColorManager.darkGray, width: 1.5.w),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: increment,
            icon: Icon(Icons.add, color: ColorManager.white),
          ),
          Expanded(
            child: Center(
              child: Text(count.toString(), style: StyleManager.whiteText),
            ),
          ),
          IconButton(
            onPressed: decrement,
            icon: Icon(Icons.remove_rounded, color: ColorManager.white),
          ),
        ],
      ),
    );
  }
}
