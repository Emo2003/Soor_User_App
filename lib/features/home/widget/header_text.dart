import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/style_manager.dart';

class HeaderText extends StatelessWidget {
  final String title;

  const HeaderText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title.tr(),
      style: StyleManager.title.copyWith(fontSize: 16.sp),
    );
  }
}
