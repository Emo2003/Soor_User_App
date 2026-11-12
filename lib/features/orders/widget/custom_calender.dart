import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/core/widgets/custom_second_btn.dart';

import 'calender_widgets/calender_header.dart';
import 'calender_widgets/calender_month_header.dart';
import 'calender_widgets/calender_body.dart';

class CustomCalender extends StatefulWidget {
  final DateTime? initialDate;
  final DateTime? minDate;
  final ValueChanged<DateTime>? onDateSelected;

  const CustomCalender({
    super.key,
    this.initialDate,
    this.minDate,
    this.onDateSelected,
  });

  @override
  State<CustomCalender> createState() => _CustomCalenderState();
}

class _CustomCalenderState extends State<CustomCalender> {
  late DateTime focusedDay;
  DateTime? selectedDay;

  DateTime get firstDay {
    final now = DateTime.now();
    return DateTime(now.year, now.month, 1);
  }

  DateTime get lastDay => DateTime(2035, 12, 31);

  DateTime get minDate {
    final date = widget.minDate ?? firstDay;
    return DateTime(date.year, date.month, date.day);
  }

  DateTime dateOnly(DateTime date) => DateTime(date.year, date.month, date.day);

  @override
  void initState() {
    super.initState();

    focusedDay = dateOnly(widget.initialDate ?? DateTime.now());

    if (focusedDay.isBefore(firstDay)) focusedDay = firstDay;
    if (focusedDay.isBefore(minDate)) focusedDay = minDate;
    if (focusedDay.isAfter(lastDay)) focusedDay = lastDay;

    if (widget.initialDate != null &&
        !isDisabled(widget.initialDate!) &&
        !dateOnly(widget.initialDate!).isAfter(lastDay)) {
      selectedDay = dateOnly(widget.initialDate!);
    }
  }

  bool isDisabled(DateTime day) => dateOnly(day).isBefore(minDate);

  void changeMonth(int value) {
    final newMonth = DateTime(focusedDay.year, focusedDay.month + value);

    if (newMonth.isBefore(firstDay) ||
        newMonth.isAfter(DateTime(lastDay.year, lastDay.month))) {
      return;
    }

    setState(() => focusedDay = newMonth);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: ColorManager.primary,
      insetPadding: EdgeInsets.symmetric(horizontal: 16.w),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      child: SizedBox(
        height: 410.h,
        width: 380.w,
        child: Column(
          children: [
            const CalenderHeader(),

            CalenderMonthHeader(
              focusedDay: focusedDay,
              onMonthChanged: changeMonth,
            ),

            Expanded(
              child: CalenderBody(
                focusedDay: focusedDay,
                firstDay: firstDay,
                lastDay: lastDay,
                selectedDay: selectedDay,
                isDisabled: isDisabled,
                onDateSelected: (selected, focused) {
                  setState(() {
                    selectedDay = dateOnly(selected);
                    focusedDay = focused;
                  });
                },
                onPageChanged: (focused) {
                  setState(() => focusedDay = focused);
                },
              ),
            ),

            Padding(
              padding: EdgeInsets.all(15.sp),
              child: CustomSecondBtn(
                text: 'next'.tr(),
                onPressed: () {
                  if (selectedDay == null) return;

                  widget.onDateSelected?.call(selectedDay!);
                  Navigator.pop(context, selectedDay);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
