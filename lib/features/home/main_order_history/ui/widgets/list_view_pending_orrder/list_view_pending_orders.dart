import 'package:ecommerceapp/features/home/main_order_history/ui/widgets/list_view_pending_orrder/list_view_pending_orders_item.dart';
import 'package:flutter/material.dart';

class ListViewPendingOrders extends StatelessWidget {
  const ListViewPendingOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
       return const ListViewPendingOrdersItem();
    });
  }
}