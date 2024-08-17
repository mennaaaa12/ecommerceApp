import 'package:ecommerceapp/features/home/main_home/ui/widgets/notification/notification_list_view/notification_list_view_item.dart';
import 'package:flutter/material.dart';

class NotificationListView extends StatelessWidget {
  const NotificationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
      return const NotificationListViewItem();
    });
  }
}