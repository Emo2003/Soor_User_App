import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/features/home/widget/review_container.dart';

import '../../../core/const/dummy_data.dart';

class ReviewsList extends StatelessWidget {
  const ReviewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: DummyData.reviews.length,
      separatorBuilder: (context, index) => 10.verticalSpace,
      itemBuilder: (context, index) {
        return ReviewContainer(review: DummyData.reviews[index]);
      },
    );
  }
}
