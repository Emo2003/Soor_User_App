import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/const/assets_manager.dart';
import '../../../../core/themes/style_manager.dart';

class SuccessHeader extends StatelessWidget {
  const SuccessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(AssetsManager.success),
        30.verticalSpace,
        Text("Success!".tr(), style: StyleManager.title),
        10.verticalSpace,
        Text(
          "Your password has been changed successfully.".tr(),
          style: StyleManager.subtitle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
