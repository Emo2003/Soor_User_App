import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/const/assets_manager.dart';

class CurrentLocationButton extends StatelessWidget {
  const CurrentLocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10.w,
      bottom: 15.h,
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(50.r),
        child: Container(
          padding: EdgeInsets.all(10.w),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            AssetsManager.location,
            width: 22.w,
            height: 22.h,
          ),
        ),
      ),
    );
  }
}
