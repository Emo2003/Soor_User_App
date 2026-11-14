import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../confirm_location/widget/custom_app_bar.dart';
import 'widget/chat_container.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomAppBar(
          title: "Chats",
          onBackPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.w),
        child: ListView.separated(
          separatorBuilder: (context, index) => 10.verticalSpace,
          itemCount: 3,
          itemBuilder: (context, index) {
            return ChatContainer(isNewMessage: index == 0);
          },
        ),
      ),
    );
  }
}
