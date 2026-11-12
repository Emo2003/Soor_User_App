
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/style_manager.dart';

import 'calender_month_arrow.dart';

class CalenderMonthHeader extends StatelessWidget {
  final DateTime focusedDay;
  final ValueChanged<int> onMonthChanged;

  const CalenderMonthHeader({
    super.key,
    required this.focusedDay,
    required this.onMonthChanged,
  });

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    final isCurrentMonth =
        focusedDay.year == now.year &&
            focusedDay.month == now.month;

    return SizedBox(
      height: 48.h,
      child: Row(
        children: [
          if (!isCurrentMonth)
            CalenderMonthArrow(
              icon: Icons.chevron_left,
              onTap: () => onMonthChanged(-1),
            ),

          Expanded(
            child: Center(
              child: Text(
                '${'months.${focusedDay.month}'.tr()} ${focusedDay.year}',
                style: StyleManager.whiteText.copyWith(
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),

          CalenderMonthArrow(
            icon: Icons.chevron_right,
            onTap: () => onMonthChanged(1),
          ),
        ],
      ),
    );
  }
}
