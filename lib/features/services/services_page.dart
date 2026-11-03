import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/core/const/assets_manager.dart';
import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/features/services/widget/service_order_container.dart';

import '../../core/routes/routes_name.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: Text(
          "Services".tr(),
          style: StyleManager.whiteText.copyWith(fontSize: 16.sp),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ServiceOrderContainer(
            title: "Personal Request",
            iconPath: AssetsManager.singleUser,
            firstColor: ColorManager.yellow,
            secondColor: ColorManager.brown,
              onPressed: (){
                context.push(RoutesName.location);
              },
          ),

          ServiceOrderContainer(
            title: "Occasions",
            iconPath: AssetsManager.doubleUser,
            firstColor: ColorManager.babyBlue,
            secondColor: ColorManager.darkBlue,
            onPressed: (){
              context.push(RoutesName.location);
            },
          ),
        ],
      ),
    );
  }
}
