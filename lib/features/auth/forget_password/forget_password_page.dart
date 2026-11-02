import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/const/assets_manager.dart';
import 'package:soor_app/core/routes/routes_name.dart';
import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/core/widgets/custom_second_btn.dart';
import 'package:soor_app/features/auth/forget_password/widget/custom_app_bar.dart';
import 'package:soor_app/features/auth/forget_password/widget/forget_pass_field.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomForgetAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  AssetsManager.logo,
                  fit: BoxFit.cover,
                  width: 120.w,
                ),
                20.verticalSpace,
                Text("Are you forget password ?".tr(), style: StyleManager.title),
                24.verticalSpace,
                ForgetPassField(controller: controller),
                30.verticalSpace,
                CustomSecondBtn(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.verifyUser);
                  },
                  text: "Send".tr(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
