import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/core/const/assets_manager.dart';
import 'package:soor_app/core/routes/routes_name.dart';
import 'package:soor_app/core/widgets/custom_leading.dart';

import '../../../core/themes/color_manager.dart';
import '../../../core/themes/style_manager.dart';

class BookingDetailsAppBar extends StatelessWidget {
  const BookingDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.primary,
      title: Text(
        "#123456",
        style: StyleManager.whiteText.copyWith(fontWeight: FontWeight.w700),
      ),
      centerTitle: true,
      leading: CustomLeading(
        onBackPressed: () {
          context.pop();
        },
      ),
      actions: [
        GestureDetector(
          onTap: () {
            context.push(RoutesName.chat);
          },
          child: Container(
            margin: EdgeInsets.all(7.sp),
            padding: EdgeInsets.all(5.sp),
            decoration: BoxDecoration(
              color: ColorManager.darkBlue,
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Image.asset(AssetsManager.message),
          ),
        ),
      ],
    );
  }
}
