import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/features/confirm_location/widget/custom_app_bar.dart';
import 'package:soor_app/features/notifications/widget/notification_container.dart';

import '../../core/const/dummy_data.dart';
import '../../core/helper/notification_helper.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final groupedNotifications = NotificationHelper().groupNotification(
      DummyData.notifications,
    );

    final dates = groupedNotifications.keys.toList()
      ..sort((a, b) => b.compareTo(a));
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomAppBar(
          title: "notifications",
          isExit: true,
          onBackPressed: () {
            context.pop();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.sp),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: dates.length,

                separatorBuilder: (context, index) => 15.verticalSpace,

                itemBuilder: (context, index) {
                  final date = dates[index];
                  final notifications = groupedNotifications[date]!;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10.h,
                    children: [
                      Text(dateTitle(date), style: StyleManager.hintText.copyWith(
                        fontWeight: FontWeight.w600,
                      )),
                      ...notifications.map(
                        (notification) => NotificationContainer(
                          notification: notification,
                          isNewNotification: notification.isNewNotification,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
