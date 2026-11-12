import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/features/orders/widget/checkbox_row.dart';
import 'package:soor_app/features/orders/widget/payment_methods_container.dart';
import '../../core/widgets/custom_second_btn.dart';
import '../booking/widget/booking_details_container.dart';
import '../booking/widget/payment_summary_container.dart';
import '../confirm_location/widget/custom_app_bar.dart' show CustomAppBar;
import '../confirm_location/widget/location_data.dart';

class OrderReviewPage extends StatelessWidget {
  const OrderReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(
          title: "review_details",
          onBackPressed: () {
            context.pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(15.sp),
              child: Column(
                children: [
                  const LocationData(),
                  15.verticalSpace,
                  const BookingDetailsContainer(isDetailed: true),
                  15.verticalSpace,
                  const PaymentMethodsContainer(),
                  15.verticalSpace,
                  const PaymentSummaryContainer(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorManager.darkGray,
              ),
              child: Column(
                children: [
                  CheckboxRow(),
                  CustomSecondBtn(
                    onPressed: () {},
                    text: "pay".tr(),
                  ),
                  20.verticalSpace,
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
