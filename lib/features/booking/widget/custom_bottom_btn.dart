import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/style_manager.dart';

import '../../../core/themes/color_manager.dart';

class CustomBottomBtn extends StatelessWidget {
  final VoidCallback onExtendTimePressed;
  final VoidCallback onRatingPressed;

  const CustomBottomBtn({
    super.key,
    required this.onExtendTimePressed,
    required this.onRatingPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _Btn(title: "extend_time".tr(), onPressed: onExtendTimePressed),
        15.horizontalSpace,
        _Btn(title: "rating".tr(), onPressed: onRatingPressed, isYellow: true),
      ],
    );
  }
}

class _Btn extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool isYellow;

  const _Btn({
    required this.title,
    required this.onPressed,
    this.isYellow = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isYellow
              ? ColorManager.secondary
              : ColorManager.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        child: Text(
          title.tr(),
          style: isYellow ? StyleManager.whiteText : StyleManager.darkYellow,
        ),
      ),
    );
  }
}
