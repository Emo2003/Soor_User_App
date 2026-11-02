import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/core/themes/style_manager.dart';

class AcceptServiceRow extends StatefulWidget {
  const AcceptServiceRow({super.key});

  @override
  State<AcceptServiceRow> createState() => _AcceptServiceRowState();
}

class _AcceptServiceRowState extends State<AcceptServiceRow> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          fillColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.selected)) {
              return Colors.lightBlue;
            }
            return ColorManager.lightGray;
          }),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2.r),
          ),
          checkColor: Colors.white,
          onChanged: (value) {
            setState(() {
              isChecked = value ?? false;
            });
          },
        ),
        Expanded(
          child: Wrap(
            children: [
              Text(
                "I agree to the Terms and".tr(),
                style: StyleManager.hintText.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Privacy Policy.".tr(),
                  style: StyleManager.yellowText.copyWith(
                    fontSize: 14.sp,
                    decorationColor: ColorManager.yellow,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
