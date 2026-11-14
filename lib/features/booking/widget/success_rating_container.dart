import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/const/assets_manager.dart';
import 'package:soor_app/core/themes/style_manager.dart';

import '../../../core/themes/color_manager.dart';
import '../../../core/widgets/custom_second_btn.dart';
import 'header_add_container.dart';

class SuccessRatingContainer extends StatelessWidget {
  const SuccessRatingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        HeaderAddContainer(title: "rating"),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          decoration: BoxDecoration(color: ColorManager.background),
          child: Column(
            spacing: 10.w,
            children: [
              Image.asset(AssetsManager.ratingSuccess),
              5.verticalSpace,
              Text(
                "rating_submitted_successfully".tr(),
                style: StyleManager.whiteText,
              ),
              5.verticalSpace,
              Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: CustomSecondBtn(onPressed: () {}, text: "rating"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
