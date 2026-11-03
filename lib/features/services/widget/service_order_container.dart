import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/themes/color_manager.dart';
import '../../../core/themes/style_manager.dart';
import '../../../core/widgets/custom_btn.dart';

class ServiceOrderContainer extends StatelessWidget {
  final String title;
  final String iconPath;
  final Color firstColor;
  final Color secondColor;
  final VoidCallback? onPressed;

  const ServiceOrderContainer({
    super.key,
    required this.title,
    required this.iconPath,
    required this.firstColor,
    required this.secondColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.sp),
      height: 200.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.primary,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(15.sp),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.sp),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [firstColor, secondColor.withAlpha(200)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                // color: ColorManager.secondary,
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: SvgPicture.asset(iconPath),
            ),
            10.verticalSpace,
            Text(
              title.tr(),
              style: StyleManager.whiteText.copyWith(fontSize: 16.sp),
            ),
            Text(
              "Service Description here".tr(),
              style: StyleManager.hintText.copyWith(fontSize: 14.sp),
            ),
            20.verticalSpace,
            CustomBtn(text: "Start Now".tr(), onPressed: () {
              onPressed?.call();
            }),

          ],
        ),
      ),
    );
  }
}
