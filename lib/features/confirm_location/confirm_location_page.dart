import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/core/routes/routes_name.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/core/widgets/custom_second_btn.dart';
import 'package:soor_app/features/confirm_location/widget/custom_app_bar.dart';
import 'package:soor_app/features/confirm_location/widget/location_addition_field.dart';
import 'package:soor_app/features/confirm_location/widget/location_data.dart';

class ConfirmLocationPage extends StatelessWidget {
  const ConfirmLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(
          title: "Confirm Location",
          onBackPressed: () {
            context.pop();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LocationData(),
            20.verticalSpace,
            Text(
              "Additional Location Details".tr(),
              style: StyleManager.title.copyWith(fontSize: 16.sp),
            ),
            20.verticalSpace,
            LocationAdditionField(hintText: "area_name".tr()),
            10.verticalSpace,
            LocationAdditionField(hintText: "house_number".tr()),
            10.verticalSpace,
            LocationAdditionField(hintText: "floor_number".tr()),
            10.verticalSpace,
            LocationAdditionField(hintText: "additional_address_details".tr()),
            Spacer(),
            CustomSecondBtn(
              onPressed: () {
                context.push(RoutesName.orderDetails);
              },
              text: "Confirm".tr(),
            ),
          ],
        ),
      ),
    );
  }
}
