import 'package:ecommerceapp/features/home/main_order_history/order_history_details/ui/widgets/list_view_quantity/list_view_quantity_item.dart';
import 'package:flutter/material.dart';

class ListViewQuantity extends StatelessWidget {
  const ListViewQuantity({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
      itemCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
      return const ListViewQuantityItem();
    });
  }
}