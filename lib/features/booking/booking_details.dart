import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/features/booking/widget/adding_extra_time_container.dart';
import 'package:soor_app/features/booking/widget/booking_details_app_bar.dart';
import 'package:soor_app/features/booking/widget/booking_details_container.dart';
import 'package:soor_app/features/booking/widget/custom_bottom_btn.dart';
import 'package:soor_app/features/booking/widget/order_live.dart';
import 'package:soor_app/features/booking/widget/payment_method_container.dart';
import 'package:soor_app/features/booking/widget/payment_summary_container.dart';
import 'package:soor_app/features/booking/widget/rating_container.dart';

import '../home/widget/extra_time_container.dart';

class BookingDetails extends StatefulWidget {
  const BookingDetails({super.key});

  @override
  State<BookingDetails> createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  int? selectedTime;

  void onExtendTimePressed() async {
    final time = await showModalBottomSheet<int>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return AddingExtraTimeContainer(

        );
      },
    );
    if (time != null) {
      setState(() {
        selectedTime = time;
      });
    }
  }

  void onRatingPressed() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => RatingContainer(),
    );
  }

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
              if (selectedTime != null) ...[
                ExtraTimeContainer(extraTime: selectedTime),
              ],
              20.verticalSpace,
              PaymentMethodContainer(),
              20.verticalSpace,
              PaymentSummaryContainer(),
              20.verticalSpace,
              OrderLive(),
              20.verticalSpace,
              CustomBottomBtn(
                onExtendTimePressed: onExtendTimePressed,
                onRatingPressed: onRatingPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
