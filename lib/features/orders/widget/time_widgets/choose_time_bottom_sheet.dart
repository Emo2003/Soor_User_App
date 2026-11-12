import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/core/widgets/custom_second_btn.dart';

import '../../../../core/themes/color_manager.dart';
import '../../../../core/themes/style_manager.dart';
import 'time_option_chip.dart';

class ChooseTimeBottomSheet extends StatefulWidget {
  final ValueChanged<String>? onSave;

  const ChooseTimeBottomSheet({super.key, this.onSave});

  @override
  State<ChooseTimeBottomSheet> createState() => _ChooseTimeBottomSheetState();
}

class _ChooseTimeBottomSheetState extends State<ChooseTimeBottomSheet> {
  final List<String> times = [
    '11:م',
    '11:م',
    '11:م',
    '11:م',
    '11:م',
    '11:م',
    '11:م',
    '11:م',
    '11:م',
    '11:م',
  ];

  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorManager.mediumGray,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
          child: Column(
            children: [
              5.verticalSpace,
              Container(
                width: 40.w,
                height: 3.h,
                decoration: BoxDecoration(
                  color: ColorManager.lightGray,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),

              Row(
                children: [
                  Text('select_time'.tr(), style: StyleManager.mediumTitle),
                  const Spacer(),

                  IconButton(
                    onPressed: () => context.pop(),
                    icon: Icon(
                      Icons.close,
                      color: ColorManager.white,
                      size: 24.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          decoration: BoxDecoration(color: ColorManager.primary),
          child: Column(
            children: [
              Wrap(
                spacing: 5.w,
                runSpacing: 5.h,
                children: List.generate(times.length, (index) {
                  return TimeOptionChip(
                    time: times[index],
                    isSelected: selectedIndex == index,
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  );
                }),
              ),
              10.verticalSpace,
              Padding(
                padding: EdgeInsets.only(bottom: 15.h),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomSecondBtn(
                        onPressed: () {
                         context.pop();
                        },
                        isPrevious: true,
                        text: "Previous",
                      ),
                    ),
                    10.horizontalSpace,
                    Expanded(
                      child: CustomSecondBtn(
                        onPressed: () {
                          if (widget.onSave != null) {
                            widget.onSave!(times[selectedIndex]);
                          }
                        },
                        text: "Save",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
