import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/core/routes/routes_name.dart';
import 'package:soor_app/core/widgets/custom_second_btn.dart';
import 'package:soor_app/features/auth/forget_password/widget/success_header.dart';

class PasswordChangedPage extends StatelessWidget {
  const PasswordChangedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            SuccessHeader(),
            Spacer(),
            CustomSecondBtn(
              onPressed: () {
                context.push(RoutesName.login);
              },
              text: "Login".tr(),
            ),
          ],
        ),
      ),
    );
  }
}
