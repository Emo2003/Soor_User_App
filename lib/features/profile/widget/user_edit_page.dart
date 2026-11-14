import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/core/helper/validators.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/core/widgets/custom_text_field.dart';
import 'package:soor_app/features/confirm_location/widget/custom_app_bar.dart';

class UserEditPage extends StatelessWidget {
  const UserEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomAppBar(
          title: "Account",
          onBackPressed: () {
            context.pop();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10.h,
          children: [
            Text("Phone Number".tr(), style: StyleManager.whiteText),
            CustomTextField(
              isEditable: true,
              hintText: "+966 000 000 00",
              validator: Validators.validateMobile,
              controller: null,
            ),
            Text("Email".tr(), style: StyleManager.whiteText),
            CustomTextField(
              isEditable: true,
              hintText: "info@gmail.com",
              validator: Validators.validateEmail,
              controller: null,
            ),
            Text("Full Name".tr(), style: StyleManager.whiteText),
            CustomTextField(
              isEditable: true,
              hintText: "احمد محمد",
              validator: Validators.validateName,
              controller: null,
            ),
            Text("Password".tr(), style: StyleManager.whiteText),
            CustomTextField(
              isEditable: true,
              hintText: "********",
              validator: Validators.validatePassword,
              controller: null,
            ),
            Text("Confirm Password".tr(), style: StyleManager.whiteText),
            CustomTextField(
              isEditable: true,
              hintText: "********",
              validator: Validators.validatePassword,
              controller: null,
            ),
          ],
        ),
      ),
    );
  }
}
