import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/core/widgets/custom_leading.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Function() onBackPressed;
  final bool isExit;

  const CustomAppBar({
    super.key,
    required this.onBackPressed,
    required this.title,
    this.isExit = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      scrolledUnderElevation: 0,
      elevation: 0,
      backgroundColor: ColorManager.primary,
      title: Text(
        title.tr(),
        style: StyleManager.whiteText.copyWith(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      leading: isExit
          ? GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                decoration: BoxDecoration(
                  color: ColorManager.darkGray,
                  shape: BoxShape.circle,
                ),
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                child: Image.asset("assets/images/x.png"),
              ),
            )
          : CustomLeading(onBackPressed: onBackPressed),
      centerTitle: true,
    );
  }
}
