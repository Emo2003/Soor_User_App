import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:soor_app/core/themes/style_manager.dart';

import '../../../../core/themes/color_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  void changeLanguage(BuildContext context) {
    final currentLocale = context.locale;

    if (currentLocale.languageCode == 'en') {
      context.setLocale(const Locale('ar'));
    } else {
      context.setLocale(const Locale('en'));
    }
  }

  @override
  Widget build(BuildContext context) {
    final isEnglish = context.locale.languageCode == 'en';

    return AppBar(
      title: TextButton(
        onPressed: () => changeLanguage(context),
        child: Text(
          isEnglish ? 'English' : 'العربية',
          style: StyleManager.yellowText,
        ),
      ),
      titleSpacing: 0.w,
      backgroundColor: ColorManager.primary,
      leading: IconButton(
        icon: const Icon(
          Icons.language_outlined,
          color: ColorManager.yellow,
          size: 25,
        ),
        onPressed: () => changeLanguage(context),
      ),
      actions: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: ColorManager.darkGray,
            borderRadius: BorderRadius.circular(25),
          ),
          margin: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          child: Image.asset("assets/images/x.png"),
        ),
      ],
    );
  }
}
