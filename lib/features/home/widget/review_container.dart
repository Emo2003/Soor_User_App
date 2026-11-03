
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/const/dummy_data.dart';
import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/core/themes/style_manager.dart';

class ReviewContainer extends StatelessWidget {
  final ReviewModel review;

  const ReviewContainer({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: 7.h,
      ),
      decoration: BoxDecoration(
        color: ColorManager.darkGray,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                review.reviewerName.tr(),
                style: StyleManager.title.copyWith(
                  fontSize: 16.sp,
                ),
              ),
              const Spacer(),
              Row(
                children: List.generate(
                  5,
                      (index) => Icon(
                    Icons.star,
                    color: index >= 5- review.rating
                        ? ColorManager.yellow
                        : ColorManager.lightGray,
                    size: 17.sp,
                  ),
                ),
              ),
            ],
          ),
          10.verticalSpace,
          Text(
            review.review.tr(),
            style: StyleManager.hintText,
          ),
        ],
      ),
    );
  }
}
