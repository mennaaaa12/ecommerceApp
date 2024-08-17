import 'package:ecommerceapp/features/home/main_home/ui/widgets/cart/list_view_cart/list_view_cart_item.dart';
import 'package:flutter/material.dart';

class ListViewCart extends StatelessWidget {
  const ListViewCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
      return const ListViewCartItem();
    });
  }
}