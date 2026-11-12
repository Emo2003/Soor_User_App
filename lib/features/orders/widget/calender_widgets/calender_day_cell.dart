
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/color_manager.dart';

class CalenderDayCell extends StatelessWidget {
  final DateTime day;
  final Color color;
  final Color? background;

  const CalenderDayCell({
    super.key,
    required this.day,
    required this.color,
    this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 35.w,
        height: 35.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: background ?? Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Text(
          '${day.day}',
          style: TextStyle(
            color: color,
            fontSize: 12.sp,
            fontWeight: background == ColorManager.secondary
                ? FontWeight.bold
                : FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
