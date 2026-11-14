import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/color_manager.dart';

import '../../../core/themes/style_manager.dart';

class AddRatingContainer extends StatelessWidget {
  final int rating;
  final String nameOfReview;

  const AddRatingContainer({
    super.key,
    required this.rating,
    required this.nameOfReview,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: ColorManager.darkGray,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Text(nameOfReview.tr(), style: StyleManager.mediumTitle),
          Spacer(),
          Row(
            children: List.generate(
              5,
              (index) => Icon(
                Icons.star,
                color: index >= 5 - rating
                    ? ColorManager.yellow
                    : ColorManager.lightGray,
                size: 17.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
