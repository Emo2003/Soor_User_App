import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soor_app/core/const/assets_manager.dart';
import 'package:soor_app/core/themes/color_manager.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(AssetsManager.logo, width: 100.w, fit: BoxFit.fill),
      backgroundColor: ColorManager.background,
      actions: [
        Container(
          padding: EdgeInsets.all(10.sp),
          decoration: BoxDecoration(
            color: ColorManager.darkGray,
            borderRadius: BorderRadius.circular(25.r),
          ),
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          child: SvgPicture.asset(AssetsManager.notification),
        ),
      ],
    );
  }
}
