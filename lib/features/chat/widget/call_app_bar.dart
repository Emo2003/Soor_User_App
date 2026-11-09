import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/color_manager.dart';

class CallAppBar extends StatelessWidget {
  const CallAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.primary,
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(10.sp),
            decoration: BoxDecoration(
              color: ColorManager.darkGray,
              borderRadius: BorderRadius.circular(25),
            ),
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            child: Image.asset("assets/images/x.png"),
          ),
        ),
      ],
    );
  }
}
