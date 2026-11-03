import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/color_manager.dart';
import '../../../core/themes/style_manager.dart';

class PageViewHeader extends StatelessWidget {
  const PageViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      width: double.infinity,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            decoration: BoxDecoration(
              color: ColorManager.background,
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '50% discount \non your first booking'.tr(),
                  style: StyleManager.title.copyWith(fontSize: 27.sp),
                ),

                10.verticalSpace,

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(100.w, 35.h),
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    backgroundColor: ColorManager.babyBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Book Now'.tr(),
                        style: StyleManager.whiteText,
                      ),
                      5.horizontalSpace,
                      Icon(
                        Icons.arrow_forward,
                        color: ColorManager.white,
                        size: 15.sp,
                      ),
                    ],
                  ),
                ),
                10.verticalSpace,
                Center(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                            (dotIndex) => Container(
                          margin: EdgeInsets.symmetric(horizontal: 3.w),
                          width: 6.w,
                          height: 6.h,
                          decoration: BoxDecoration(
                            color: dotIndex == index
                                ? ColorManager.babyBlue
                                : ColorManager.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
