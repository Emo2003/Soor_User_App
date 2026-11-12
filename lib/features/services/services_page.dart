import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/core/const/assets_manager.dart';
import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/core/widgets/custom_layout_app_bar.dart';
import 'package:soor_app/features/services/widget/service_order_container.dart';

import '../../core/routes/routes_name.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomLayoutAppBar(title: "Services"),
      ),
      body: Column(
        children: [
          ServiceOrderContainer(
            title: "Personal Request",
            iconPath: AssetsManager.singleUser,
            firstColor: ColorManager.yellow,
            secondColor: ColorManager.brown,
            onPressed: () {
              context.push(RoutesName.location);
            },
          ),

          ServiceOrderContainer(
            title: "Occasions",
            iconPath: AssetsManager.doubleUser,
            firstColor: ColorManager.babyBlue,
            secondColor: ColorManager.darkBlue,
            onPressed: () {
              context.push(RoutesName.location);
            },
          ),
        ],
      ),
    );
  }
}
