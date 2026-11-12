import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/color_manager.dart';
import '../themes/style_manager.dart';

class CustomLayoutAppBar extends StatelessWidget {
  final String title;

  const CustomLayoutAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.primary,
      title: Text(
        title.tr(),
        style: StyleManager.whiteText.copyWith(fontSize: 16.sp),
      ),
      centerTitle: true,
    );
  }
}
