import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/const/assets_manager.dart';
import 'package:soor_app/features/chat/widget/chat_app_bar.dart';
import 'package:soor_app/features/chat/widget/chat_bubble_container.dart';
import 'package:soor_app/features/chat/widget/send_container.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: const ChatAppBar(),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.sp),
              child: ListView(
                children: [
                  ChatBubbleContainer(
                    userImage: AssetsManager.person,
                    userName: "ahmed_mohamed",
                    message: "waiting_for_you",
                    isSender: true,
                  ),
                  10.verticalSpace,
                  ChatBubbleContainer(
                    userImage: AssetsManager.soorPerson,
                    userName: "Soor",
                    message: "confirm_attendance",
                  ),
                ],
              ),
            ),
          ),
          SendContainer(),
        ],
      ),
    );
  }
}
