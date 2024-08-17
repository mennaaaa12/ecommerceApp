import 'package:ecommerceapp/features/home/main_order_history/ui/widgets/list_view_this_month/list_view_this_month_item.dart';
import 'package:flutter/material.dart';

class ListViewThisMonth extends StatelessWidget {
  const ListViewThisMonth({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 3,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return const ListViewThisMonthItem();
      },
    );
  }
}