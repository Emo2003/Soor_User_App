import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/core/widgets/custom_second_btn.dart';
import 'package:soor_app/features/orders/widget/addition_details_container.dart';
import 'package:soor_app/features/orders/widget/guards_count_container.dart';
import 'package:soor_app/features/orders/widget/order_details_container.dart';

import '../../core/themes/color_manager.dart';
import '../confirm_location/widget/custom_app_bar.dart' show CustomAppBar;

class OrderDetailsPage extends StatefulWidget {
  const OrderDetailsPage({super.key});

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  int guardsCount = 1;
  int serviceDuration = 3;

  void incrementGuards() {
    setState(() {
      guardsCount++;
    });
  }
  void decrementGuards() {
    if (guardsCount > 1) {
      setState(() {
        guardsCount--;
      });
    }
  }
  void incrementDuration() {
    setState(() {
      serviceDuration++;
    });
  }
  void decrementDuration() {
    if (serviceDuration > 3) {
      setState(() {
        serviceDuration--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(
          title: "Details",
          onBackPressed: () {
            context.pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(15.sp),
          child: Column(
            children: [
              OrderDetailsContainer(),
              15.verticalSpace,

              GuardsCountContainer(
                guardsCount: guardsCount,
                serviceDuration: serviceDuration,
                incrementGuards: incrementGuards,
                decrementGuards: decrementGuards,
                incrementDuration: incrementDuration,
                decrementDuration: decrementDuration,
              ),

              15.verticalSpace,
              AdditionDetailsContainer(),
              15.verticalSpace,
              Container(
                width: double.infinity,
                height: 130.h,
                padding: EdgeInsets.all(12.sp),
                decoration: BoxDecoration(
                  color: ColorManager.primary,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: ColorManager.darkGray, width: 1.w),
                ),
                child: Text(
                  "additional_notes_hint".tr(),
                  style: StyleManager.hintText,
                  maxLines: 10,
                ),
              ),
              20.verticalSpace,
              CustomSecondBtn(onPressed: () {}, text: "request_amount"),
            ],
          ),
        ),
      ),
    );
  }
}
