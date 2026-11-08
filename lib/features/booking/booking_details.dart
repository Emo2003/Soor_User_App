import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/features/booking/widget/booking_details_app_bar.dart';
import 'package:soor_app/features/booking/widget/booking_details_container.dart';
import 'package:soor_app/features/booking/widget/order_live.dart';
import 'package:soor_app/features/booking/widget/payment_method_container.dart';
import 'package:soor_app/features/booking/widget/payment_summary_container.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: BookingDetailsAppBar(),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            children: [
              BookingDetailsContainer(),
              20.verticalSpace,
              PaymentMethodContainer(),
              20.verticalSpace,
              PaymentSummaryContainer(),
              20.verticalSpace,
              OrderLive()
            ],
          ),
        ),
      ),
    );
  }
}
