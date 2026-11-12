import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/core/themes/style_manager.dart';

class PaymentSummaryContainer extends StatelessWidget {
  const PaymentSummaryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.darkGray, width: 1.5.w),
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Payment Summary".tr(),
            style: StyleManager.whiteText.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          20.verticalSpace,
          _CustomPaymentRow(title: "Order Value", value: "1600 Riyal"),
          10.verticalSpace,
          _CustomPaymentRow(title: "Service Fee", value: "1600 Riyal"),
          10.verticalSpace,
          _CustomPaymentRow(title: "Total", value: "1600 Riyal", isTotal: true),
        ],
      ),
    );
  }
}

class _CustomPaymentRow extends StatelessWidget {
  final String title;
  final String value;
  final bool isTotal;

  const _CustomPaymentRow({
    required this.title,
    required this.value,
    this.isTotal = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title.tr(),
            style: isTotal
                ? StyleManager.yellowText.copyWith(fontWeight: FontWeight.w700)
                : StyleManager.subtitle,
          ),
        ),
        Text(
          value.tr(),
          style: isTotal
              ? StyleManager.yellowText.copyWith(fontWeight: FontWeight.w700)
              : StyleManager.subtitle,
        ),
      ],
    );
  }
}
