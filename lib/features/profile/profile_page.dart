import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/core/const/assets_manager.dart';
import 'package:soor_app/core/routes/routes_name.dart';
import 'package:soor_app/features/profile/widget/user_data_container.dart';
import 'package:soor_app/features/profile/widget/user_service_container.dart';
import '../../core/widgets/custom_layout_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomLayoutAppBar(title: "More"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.sp),
          child: Column(
            children: [
              UserDataContainer(),
              30.verticalSpace,
              UserServiceContainer(
                title: "change_language",
                iconPath: AssetsManager.language,
                isLanguageChangeEnabled: true,
                onTap: () {},
              ),
              10.verticalSpace,
              UserServiceContainer(
                title: "chats",
                iconPath: AssetsManager.message,
                onTap: () {
                  context.push(RoutesName.chats);
                },
              ),
              10.verticalSpace,
              UserServiceContainer(
                title: "terms_and_conditions",
                iconPath: AssetsManager.annotation,
                onTap: () {
                  context.push(RoutesName.policy);
                },
              ),
              10.verticalSpace,
              UserServiceContainer(
                title: "logout",
                iconPath: AssetsManager.logout,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
