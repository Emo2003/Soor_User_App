import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/color_manager.dart';
import '../../../core/themes/style_manager.dart';

class SelectedCard extends StatelessWidget {
  final String title;
  final bool isSelected;

  final Function() onTap;

  const SelectedCard({
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: isSelected ? 5.w : 15.w,
          vertical: 5.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45.r),
          border: Border.all(
            color: isSelected ? ColorManager.secondary : ColorManager.darkGray,
            width: 1.5.w,
          ),
        ),
        child: Row(
          spacing: 5.w,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title.tr(), style: StyleManager.subtitle),
            if (isSelected) Icon(Icons.check, color: ColorManager.secondary),
          ],
        ),
      ),
    );
  }
}

