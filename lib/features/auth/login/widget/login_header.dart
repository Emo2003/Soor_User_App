import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/const/assets_manager.dart';
import '../../../../core/themes/style_manager.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AssetsManager.logo, fit: BoxFit.cover, width: 120.w),
        24.verticalSpace,
        Text("Welcome back!".tr(), style: StyleManager.title),
        8.verticalSpace,
        Text(
          "With Soor, you're in safe hands. Log in now.".tr(),
          style: StyleManager.subtitle,
        ),
      ],
    );
  }
}
