import 'package:ecommerceapp/features/home/main_home/ui/widgets/notification/notification_item_two_button.dart';
import 'package:ecommerceapp/features/home/main_home/ui/widgets/notification/notification_list_view/notification_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key, required this.onPressed});
final VoidCallback  onPressed;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Notifications',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Spacer(),
              IconButton(
                onPressed:onPressed,
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          SizedBox(height: 5.h),
          const NotificationButtonsExample(),
          SizedBox(height: 20.h),
          const NotificationListView()
        ],
      ),
    );
  }
}
