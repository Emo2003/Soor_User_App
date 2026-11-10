import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/const/assets_manager.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/features/chat/widget/call_app_bar.dart';

import '../../core/themes/color_manager.dart';
import 'widget/call_state_container.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CallAppBar(),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                "connecting".tr(),
                style: StyleManager.hintText.copyWith(color: ColorManager.blue),
              ),
              20.verticalSpace,
              Text("Soor", style: StyleManager.call),
              10.verticalSpace,
              Image.asset(AssetsManager.callImage),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 40.w,
                children: [
                  CustomCallStateContainer(
                    imagePath: AssetsManager.cancelCall,
                    isCancel: true,
                  ),
                  CustomCallStateContainer(imagePath: AssetsManager.mic),
                  CustomCallStateContainer(imagePath: AssetsManager.speaker),
                ],
              ),
              30.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
