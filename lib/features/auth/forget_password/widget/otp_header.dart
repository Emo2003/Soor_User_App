import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/style_manager.dart';

class OtpHeader extends StatelessWidget {
  const OtpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Verification".tr(),
          style: StyleManager.title,
        ),
        10.verticalSpace,
        Text(
          "Enter the code sent to: +966 000 000 00 00".tr(),
          style: StyleManager.subtitle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}