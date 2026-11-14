import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/core/const/assets_manager.dart';
import 'package:soor_app/core/routes/routes_name.dart';
import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/core/themes/style_manager.dart';

class ChatContainer extends StatelessWidget {
  final bool isNewMessage;

  const ChatContainer({super.key, this.isNewMessage = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(RoutesName.chat);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
        decoration: BoxDecoration(
          color: ColorManager.darkGray,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: ColorManager.mediumGray,
                shape: BoxShape.circle,
              ),
              child: Image.asset(AssetsManager.soorYellow),
            ),
            10.horizontalSpace,
            Column(
              children: [
                Row(
                  children: [
                    Text("Soor", style: StyleManager.yellowText),
                    5.horizontalSpace,
                    if (isNewMessage)
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.w,
                          vertical: 4.h,
                        ),
                        decoration: BoxDecoration(
                          color: ColorManager.red,
                          shape: BoxShape.circle,
                        ),
                        child: Text("2", style: StyleManager.whiteText),
                      ),
                  ],
                ),
                3.verticalSpace,
                Text("excellent_service".tr(), style: StyleManager.whiteText),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Text("12:02", style: StyleManager.hintText),
                Image.asset(
                  AssetsManager.doubleCheck,
                  width: 15.w,
                  height: 15.h,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
