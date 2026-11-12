
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/widgets/custom_second_btn.dart';

import '../../../core/const/assets_manager.dart';
import '../../../core/themes/color_manager.dart';
import '../../../core/themes/style_manager.dart';

class SuccessOrderPage extends StatelessWidget {
  const SuccessOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(30.sp),
                    decoration: BoxDecoration(
                     gradient: LinearGradient(
                        colors: [
                          ColorManager.darkBlue,
                          ColorManager.darkBlue2,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                    child: Image.asset(AssetsManager.successOrder)),
                30.verticalSpace,
                Text(
                  "Success!".tr(),
                  style: StyleManager.title,
                ),
                10.verticalSpace,
                Text(
                  "Your order has been placed successfully.".tr(),
                  style: StyleManager.subtitle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Expanded(
                  child: CustomSecondBtn(
                    onPressed: () {},
                    text: "track_order".tr(),
                  ),
                ),
                10.horizontalSpace,
                Expanded(
                  child: CustomSecondBtn(
                    onPressed: () {},
                    text: "back_to_home".tr(),
                    isPrevious: true,
                  ),
                ),
              ],
            ),
          ),
          20.verticalSpace,
        ],
      ),
    );
  }
}
