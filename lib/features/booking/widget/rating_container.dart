import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/core/const/dummy_data.dart';
import 'package:soor_app/core/widgets/custom_second_btn.dart';

import '../../../core/themes/color_manager.dart';
import 'add_rating_container.dart';
import 'header_add_container.dart';

class RatingContainer extends StatelessWidget {
  const RatingContainer({super.key});

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
              AddRatingContainer(nameOfReview: "general_appearance", rating: 3),
              AddRatingContainer(nameOfReview: "punctuality", rating: 5),
              AddRatingContainer(
                nameOfReview: "communication_style",
                rating: 4,
              ),
              AddRatingContainer(nameOfReview: "safety_and_trust", rating: 2),
              AddRatingContainer(
                nameOfReview: "overall_satisfaction",
                rating: 2,
              ),
              5.verticalSpace,
              Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: CustomSecondBtn(
                  onPressed: () {
                    context.pop();
                    DummyData.openSuccessRatingDialog(context: context);
                  },
                  text: "rating",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
