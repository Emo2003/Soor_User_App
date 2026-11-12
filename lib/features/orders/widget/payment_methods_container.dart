import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/const/assets_manager.dart';
import 'package:soor_app/core/themes/style_manager.dart';

import '../../../core/themes/color_manager.dart';

class PaymentMethodsContainer extends StatefulWidget {
  const PaymentMethodsContainer({super.key});

  @override
  State<PaymentMethodsContainer> createState() =>
      _PaymentMethodsContainerState();
}

class _PaymentMethodsContainerState extends State<PaymentMethodsContainer> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.darkGray, width: 1.5.w),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 7.h,
        children: [
          Text(
            "Payment Methods".tr(),
            style: StyleManager.mediumTitle.copyWith(fontSize: 16.sp),
          ),

          ContainerMethodsPayment(
            title: "Visa",
            imagePath: AssetsManager.visa,
            isSelected: selectedIndex == 0,
            onTap: () => setState(() => selectedIndex = 0),
          ),

          ContainerMethodsPayment(
            title: "Apple Pay",
            imagePath: AssetsManager.apple,
            isSelected: selectedIndex == 1,
            onTap: () => setState(() => selectedIndex = 1),
          ),

          ContainerMethodsPayment(
            title: "Mada Card",
            imagePath: AssetsManager.medaCard,
            isSelected: selectedIndex == 2,
            onTap: () => setState(() => selectedIndex = 2),
          ),
        ],
      ),
    );
  }
}

class ContainerMethodsPayment extends StatelessWidget {
  final bool isSelected;
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  const ContainerMethodsPayment({
    super.key,
    this.isSelected = false,
    required this.title,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
        decoration: BoxDecoration(
          color: isSelected
              ? ColorManager.secondary.withAlpha(50)
              : ColorManager.darkGray,
          border: Border.all(
            color: isSelected
                ? ColorManager.secondary
                : ColorManager.mediumGray,
            width: 1.5.w,
          ),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          children: [
            Container(
              width: 20.w,
              height: 20.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? ColorManager.darkBlue : ColorManager.white,
              ),
              child: isSelected
                  ? Icon(Icons.check, color: ColorManager.white, size: 15.sp)
                  : null,
            ),

            10.horizontalSpace,

            Text(title.tr(), style: StyleManager.whiteText),

            const Spacer(),

            Image.asset(
              imagePath,
              width: 30.w,
              height: 30.h,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
