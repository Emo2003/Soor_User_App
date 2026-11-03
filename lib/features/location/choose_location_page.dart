import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/core/routes/routes_name.dart';
import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/features/location/widget/bottom_container.dart';
import 'package:soor_app/features/location/widget/current_location_button.dart';
import 'package:soor_app/features/location/widget/location_tooltip.dart';
import 'package:soor_app/features/location/widget/search_field.dart';

class ChooseLocationPage extends StatelessWidget {
  const ChooseLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: SearchField(
          onBackPressed: () {
            context.pop();
          },
        ),
      ),

      body: Stack(
        children: [
          Positioned.fill(child: Container(color: const Color(0xFF0D0D0D))),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                LocationTooltip(),
                10.verticalSpace,
                Icon(
                  Icons.location_on,
                  size: 48.sp,
                  color: ColorManager.babyBlue,
                ),
              ],
            ),
          ),
          CurrentLocationButton(),
        ],
      ),
      bottomNavigationBar: BottomContainer(
        onConfirm: () {
          context.push(RoutesName.confirmLocation);
        },
      ),
    );
  }
}
