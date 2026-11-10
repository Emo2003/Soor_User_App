import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/core/widgets/custom_leading.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Function() onBackPressed;

  const CustomAppBar({
    super.key,
    required this.onBackPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.primary,
      title: Text(
        title.tr(),
        style: StyleManager.whiteText.copyWith(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      leading: CustomLeading(onBackPressed: onBackPressed),
      centerTitle: true,
    );
  }
}
