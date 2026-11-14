import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:soor_app/core/themes/style_manager.dart';

import '../../../../core/const/dummy_data.dart';
import '../../../../core/themes/color_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isEnglish = context.locale.languageCode == 'en';

    return AppBar(
      title: TextButton(
        onPressed: () => DummyData.changeLanguage(context: context),
        child: Text(
          isEnglish ? 'English' : 'العربية',
          style: StyleManager.yellowText,
        ),
      ),
      titleSpacing: 0.w,
      backgroundColor: ColorManager.primary,
      leading: IconButton(
        icon: Icon(
          Icons.language_outlined,
          color: ColorManager.yellow,
          size: 25.sp,
        ),
        onPressed: () => DummyData.changeLanguage(context: context),
      ),
      actions: [
        Container(
          padding: EdgeInsets.all(10.sp),
          decoration: BoxDecoration(
            color: ColorManager.darkGray,
            borderRadius: BorderRadius.circular(25.r),
          ),
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          child: Image.asset("assets/images/x.png"),
        ),
      ],
    );
  }
}
