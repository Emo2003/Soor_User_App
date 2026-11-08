import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/core/routes/routes_name.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/features/booking/widget/booking_container.dart';

import '../../core/themes/color_manager.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Booking".tr(),
          style: StyleManager.whiteText.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
          ),
        ),
        backgroundColor: ColorManager.primary,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return BookingContainer(
            onTap: () {
              context.push(RoutesName.bookingDetails);
            },
          );
        },
        itemCount: 3,
      ),
    );
  }
}
