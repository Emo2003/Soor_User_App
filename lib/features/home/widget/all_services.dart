import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/features/home/widget/service_container.dart';

import '../../../core/const/assets_manager.dart';
import '../../../core/themes/color_manager.dart';

class AllServices extends StatelessWidget {
  const AllServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ServiceContainer(
          title: "Personal Request",
          iconPath: AssetsManager.singleUser,
          firstColor: ColorManager.secondary,
          secondColor: ColorManager.brown,
        ),
        20.horizontalSpace,
        ServiceContainer(
          title: "Occasions",
          iconPath: AssetsManager.doubleUser,
          firstColor: ColorManager.babyBlue,
          secondColor: ColorManager.darkBlue,
        ),
      ],
    );
  }
}
