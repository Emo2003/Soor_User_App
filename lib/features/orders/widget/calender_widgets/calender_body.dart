
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:soor_app/core/themes/color_manager.dart';

import 'calender_day_cell.dart';

class CalenderBody extends StatelessWidget {
  final DateTime focusedDay;
  final DateTime firstDay;
  final DateTime lastDay;
  final DateTime? selectedDay;
  final bool Function(DateTime) isDisabled;
  final Function(DateTime, DateTime) onDateSelected;
  final ValueChanged<DateTime> onPageChanged;

  const CalenderBody({
    super.key,
    required this.focusedDay,
    required this.firstDay,
    required this.lastDay,
    required this.selectedDay,
    required this.isDisabled,
    required this.onDateSelected,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: firstDay,
      lastDay: lastDay,
      focusedDay: focusedDay,
      headerVisible: false,
      startingDayOfWeek: StartingDayOfWeek.saturday,
      calendarFormat: CalendarFormat.month,
      daysOfWeekHeight: 27.h,
      rowHeight: 35.h,
      sixWeekMonthsEnforced: false,

      selectedDayPredicate: (day) =>
      selectedDay != null && isSameDay(day, selectedDay),

      enabledDayPredicate: (day) => !isDisabled(day),

      onDaySelected: (selected, focused) {
        if (isDisabled(selected)) return;
        onDateSelected(selected, focused);
      },

      onPageChanged: onPageChanged,

      calendarStyle: CalendarStyle(
        outsideDaysVisible: true,
        isTodayHighlighted: false,
        cellMargin: EdgeInsets.all(3.w),
        cellPadding: EdgeInsets.zero,
      ),

      calendarBuilders: CalendarBuilders(
        dowBuilder: (context, day) => Center(
          child: Text(
            'week_days.${day.weekday}'.tr(),
            style: TextStyle(
              color: day.weekday == DateTime.saturday
                  ? ColorManager.secondary
                  : ColorManager.lightGray,
              fontSize: 10.sp,
            ),
          ),
        ),

        defaultBuilder: (context, day, focused) =>
            CalenderDayCell(day: day, color: ColorManager.white),

        todayBuilder: (context, day, focused) =>
            CalenderDayCell(day: day, color: ColorManager.white),

        selectedBuilder: (context, day, focused) =>
            CalenderDayCell(
              day: day,
              color: ColorManager.white,
              background: ColorManager.secondary,
            ),

        outsideBuilder: (context, day, focused) =>
            CalenderDayCell(
              day: day,
              color: ColorManager.mediumGray,
            ),

        disabledBuilder: (context, day, focused) =>
            CalenderDayCell(
              day: day,
              color: ColorManager.lightGray,
              background: ColorManager.darkGray,
            ),
      ),
    );
  }
}
