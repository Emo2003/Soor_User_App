import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/features/booking/booking_page.dart';
import 'package:soor_app/features/home/home_page.dart';
import 'package:soor_app/features/profile/profile_page.dart';
import 'package:soor_app/features/services/services_page.dart';

import '../../core/const/assets_manager.dart';
import '../../core/themes/color_manager.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int selectedIndex = 0;

  final List<Widget> tabs = const [
    HomePage(),
    ServicesPage(),
    BookingPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.r)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorManager.primary,
          currentIndex: selectedIndex,

          selectedLabelStyle: StyleManager.yellowText.copyWith(fontSize: 12.sp),
          unselectedLabelStyle: StyleManager.whiteText.copyWith(
            fontSize: 12.sp,
          ),

          selectedItemColor: ColorManager.yellow,
          unselectedItemColor: ColorManager.white,

          showSelectedLabels: true,
          showUnselectedLabels: true,

          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },

          items: [
            _navItem(AssetsManager.home, AssetsManager.homeActive, 'Home'.tr()),
            _navItem(
              AssetsManager.service,
              AssetsManager.serviceActive,
              'Service'.tr(),
            ),
            _navItem(
              AssetsManager.calender,
              AssetsManager.calenderActive,
              'Booking'.tr(),
            ),
            _navItem(AssetsManager.more, AssetsManager.moreActive, 'More'.tr()),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _navItem(
    String icon,
    String activeIcon,
    String label,
  ) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(icon),

      activeIcon: Container(
        decoration: BoxDecoration(
          color: ColorManager.tabColor,
          borderRadius: BorderRadius.circular(40.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 4.h),
        child: SvgPicture.asset(activeIcon),
      ),

      label: label,
    );
  }
}
