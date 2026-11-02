import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/const/assets_manager.dart';
import '../../../../core/themes/color_manager.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AssetsManager.logo,
          fit: BoxFit.cover,
          width: 120.w,
        ),
        25.verticalSpace,
        Text(
          "Create Account!".tr(),
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: ColorManager.white,
          ),
        ),
      ],
    );
  }
}
