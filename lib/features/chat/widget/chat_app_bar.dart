import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/core/const/assets_manager.dart';
import 'package:soor_app/core/routes/routes_name.dart';
import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/core/widgets/custom_leading.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.primary,
      title: Image.asset(AssetsManager.logo, width: 110.w, fit: BoxFit.fill),
      leading: CustomLeading(
        onBackPressed: () {
          context.pop();
        },
      ),
      actions: [
        GestureDetector(
          onTap: () {
            context.push(RoutesName.call);
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            padding: EdgeInsets.all(7.sp),
            decoration: BoxDecoration(
              color: ColorManager.babyBlue,
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Image.asset(AssetsManager.call),
          ),
        ),
      ],
    );
  }
}
