import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/themes/style_manager.dart';

class ServiceContainer extends StatelessWidget {
  final String title;
  final String iconPath;
  final Color firstColor;
  final Color secondColor;

  const ServiceContainer({
    super.key,
    required this.title,
    required this.iconPath,
    required this.firstColor,
    required this.secondColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 22.h),
      width: 100.w,
      height: 100.w,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [firstColor, secondColor.withAlpha(200)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        // color: ColorManager.secondary,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(iconPath),
            3.verticalSpace,
            Text(
              title.tr(),
              style: StyleManager.whiteText.copyWith(fontSize: 16.sp),
            ),
          ],
        ),
      ),
    );
  }
}
