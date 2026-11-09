import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/color_manager.dart';

class CustomCallStateContainer extends StatelessWidget {
  final bool isCancel;
  final String imagePath;

  const CustomCallStateContainer({
    super.key,
    this.isCancel = false,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.sp),
      decoration: BoxDecoration(
        color: isCancel ? ColorManager.red : ColorManager.darkGray,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: Image.asset(imagePath),
        onPressed: () {},
      ),
    );
  }
}
