import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/features/orders/widget/calender_text_field.dart';
import 'package:soor_app/features/orders/widget/time_widgets/choose_time_bottom_sheet.dart';

import '../../../core/themes/color_manager.dart';
import 'custom_calender.dart';

class OrderDetailsContainer extends StatefulWidget {
  const OrderDetailsContainer({super.key});

  @override
  State<OrderDetailsContainer> createState() => _OrderDetailsContainerState();
}

class _OrderDetailsContainerState extends State<OrderDetailsContainer> {
  late final TextEditingController controller;
  DateTime? selectedDate;
  String? selectedTime;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<void> _openCalendar() async {
    final date = await showDialog<DateTime>(
      context: context,
      builder: (context) {
        return CustomCalender(
          initialDate: selectedDate ?? DateTime.now(),
          minDate: DateTime.now(),
        );
      },
    );

    if (date == null) return;

    setState(() {
      selectedDate = date;
      selectedTime = null;
    });

    final time = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return ChooseTimeBottomSheet(
          onSave: (selectedTime) {
            context.pop(selectedTime);
          },
        );
      },
    );

    setState(() {
      selectedTime = time;

      controller.text =
          '${date.day.toString().padLeft(2, '0')} - '
          '${date.month.toString().padLeft(2, '0')} - '
          '${date.year}'
          '${time != null ? '  |  $time' : ''}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: ColorManager.darkGray, width: 1.5.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Booking Details".tr(), style: StyleManager.hintText),
          10.verticalSpace,

          Text(
            "Booking start date and time".tr(),
            style: StyleManager.whiteText,
          ),
          12.verticalSpace,

          CalenderTextField(controller: controller, onTap: _openCalendar),
        ],
      ),
    );
  }
}
