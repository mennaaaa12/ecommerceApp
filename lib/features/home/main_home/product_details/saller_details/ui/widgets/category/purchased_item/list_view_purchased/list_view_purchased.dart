import 'package:ecommerceapp/features/home/main_home/product_details/saller_details/ui/widgets/category/purchased_item/list_view_purchased/list_view_purchased_item.dart';
import 'package:flutter/material.dart';

class ListViewPurchased extends StatelessWidget {
  const ListViewPurchased({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
      return const ListViewPurchasedItem();
    });
  }
}