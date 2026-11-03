import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/features/home/widget/all_services.dart';
import 'package:soor_app/features/home/widget/booking_container.dart';
import 'package:soor_app/features/home/widget/custom_home_app_bar.dart';
import 'package:soor_app/features/home/widget/header_text.dart';
import 'package:soor_app/features/home/widget/page_view_header.dart';
import 'package:soor_app/features/home/widget/reviews_list.dart';
import 'package:soor_app/features/home/widget/service_row.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: const CustomHomeAppBar(),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PageViewHeader(),
              ServiceRow(),
              20.verticalSpace,
              AllServices(),
              20.verticalSpace,
              HeaderText(title: "Current Booking"),
              20.verticalSpace,
              BookingContainer(),
              20.verticalSpace,
              HeaderText(title: "Customer Reviews"),
              20.verticalSpace,
              ReviewsList(),
            ],
          ),
        ),
      ),
    );
  }
}
